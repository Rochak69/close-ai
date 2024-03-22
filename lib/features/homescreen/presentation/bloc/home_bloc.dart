import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:close_ai/core/build_variants/app_entry_point.dart';
import 'package:close_ai/core/dependency_injection/dependency_injection.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/firestore/app_firestore.dart';
import 'package:close_ai/core/gemini/app_gemini.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:close_ai/enum/the_states.dart';
import 'package:close_ai/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:close_ai/features/homescreen/data/model/content_response.dart';
import 'package:close_ai/features/homescreen/data/model/conversation_response.dart';
import 'package:close_ai/features/homescreen/domain/usecase/home_usecase.dart';
import 'package:close_ai/utlis/app_globals.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeUsecase) : super(const _HomeState()) {
    on<_GenerateFromImage>(_generateFromImage, transformer: droppable());
    on<_StartChat>(_startChat);
    on<_SelectChat>(_selectChat);
    on<_SwitchModel>(_switchModel);
    on<_Speak>(_speak);
    on<_Pause>(_pause);
    _init();
  }
  // ignore: unused_field
  final HomeUsecase _homeUsecase;
  FlutterTts flutterTts = FlutterTts();

  FutureOr<void> _generateFromImage(
    _GenerateFromImage event,
    Emitter<HomeState> emit,
  ) async {
    return;
    // final partedText = TextPart(event.prompt);

    // final bytesImages = await Future.wait(
    //   event.files.map((file) => file.readAsBytes()),
    // );
    // final imageParts = bytesImages.map((e) => DataPart('image/jpeg', e));
    // final content = Content.multi([partedText, ...imageParts]);
    // final newList = List<ContentResponse>.from(state.chathistory ?? [])
    //   ..addAll([
    //     content,
    //     Content.model([TextPart('Please wait..')]),
    //   ]);
    // emit(
    //   state.copyWith(theStates: TheStates.loading, chathistory: newList),
    // );
    // final result = await sl<GeminiClient>()
    //     .generateContentFromImage(prompt: event.prompt, content: content);
    // // ignore: cascade_invocations
    // result.fold((l) {
    //   _addToList(l.message, event, emit);
    // }, (r) {
    //   _addToList(r, event, emit);
    // });
  }

  void _addToList(String r, HomeEvent event, Emitter<HomeState> emit) {
    final newList = List<ContentResponse>.from(state.chathistory ?? [])
      ..removeLast()
      ..add(ContentResponse(role: 'model', text: r));

    emit(
      state.copyWith(
        theStates: TheStates.success,
        chathistory: newList,
      ),
    );
  }

  FutureOr<void> _startChat(_StartChat event, Emitter<HomeState> emit) async {
    if (state.chathistory?.isEmpty ?? true) {
      emit(state.copyWith(theStates: TheStates.initial));
      final context = AppRouter.instance.navigatorKey.currentContext!;
      final newConversation = List<ConversationResponse>.from(
        BlocProvider.of<DrawerBloc>(context).state.conversationHistory ?? [],
      )..insert(
          0,
          ConversationResponse(
            id: state.selectedCoversationId,
            title: event.prompt,
          ),
        );
      final conversationCollection = <String, dynamic>{
        'data': newConversation.map((e) => e.toJson()),
      };
      await AppFirestore.conversationDocument(AppGlobals.user)
          .set(conversationCollection);
      BlocProvider.of<DrawerBloc>(context)
          .add(const DrawerEvent.getChatHistory());
    }
    final newList = List<ContentResponse>.from(state.chathistory ?? [])
      ..addAll([
        ContentResponse(role: 'user', text: event.prompt),
        const ContentResponse(role: 'model', text: 'Please wait..'),
      ]);
    emit(
      state.copyWith(
        theStates: TheStates.loading,
        chathistory: newList,
      ),
    );

    final result = await sl<GeminiClient>().chat(prompt: event.prompt);
    // ignore: cascade_invocations
    await result.fold((l) {
      _addToList(l.message, event, emit);
    }, (r) async {
      var streamedtext = '';

      final c = r.listen((events) {
        final updatedList = List<ContentResponse>.from(newList)..removeLast();
        streamedtext = streamedtext + (events.text ?? '');

        updatedList.add(ContentResponse(role: 'model', text: streamedtext));

        emit(
          state.copyWith(
            chathistory: updatedList,
          ),
        );
      });
      await c.asFuture();
      if (streamedtext.isEmpty) {
        _addToList(
          'I apologize. I am not equipped to answer to it.',
          event,
          emit,
        );
      }
      emit(state.copyWith(theStates: TheStates.success));
      c.cancel();
      final data = state.chathistory?.map((e) => e.toJson()).toList();

      AppFirestore.chatDocument(event.id).set({'data': data});
    });
  }

  FutureOr<void> _selectChat(_SelectChat event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        theStates: TheStates.initial,
        selectedCoversationId: event.id,
        chathistory: [],
      ),
    );
    final response = await AppFirestore.chatDocument(event.id).get();
    final chatData = (response.data()?['data'] as List<dynamic>?)
        ?.map((e) => ContentResponse.fromJson(e))
        .toList();

    emit(
      state.copyWith(
        theStates: TheStates.success,
        selectedCoversationId: event.id,
        chathistory: chatData,
      ),
    );
  }

  Future<void> _switchModel(_SwitchModel event, Emitter<HomeState> emit) async {
    if (state.chathistory?.isEmpty ?? false) {
      emit(state.copyWith(currentModel: event.modelEnum));
      return;
    }

    emit(
      state.copyWith(
        theStates: TheStates.success,
        currentModel: event.modelEnum,
        selectedCoversationId: uuid.v1(),
        chathistory: [],
      ),
    );
  }

  Future<void> _init() async {
    if (Platform.isIOS) {
      await flutterTts.setSharedInstance(true);
      await flutterTts.setIosAudioCategory(
        IosTextToSpeechAudioCategory.ambient,
        [
          IosTextToSpeechAudioCategoryOptions.allowBluetooth,
          IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
          IosTextToSpeechAudioCategoryOptions.mixWithOthers,
        ],
        IosTextToSpeechAudioMode.voicePrompt,
      );
    }
    await flutterTts.setVoice({'name': 'Karen', 'locale': 'en-AU'});
  }

  FutureOr<void> _speak(_Speak event, Emitter<HomeState> emit) async {
    var result = await flutterTts.speak(event.text);
  }

  FutureOr<void> _pause(_Pause event, Emitter<HomeState> emit) async {
    var result = await flutterTts.stop();
  }
}
