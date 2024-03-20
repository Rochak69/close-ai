import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:close_ai/core/dependency_injection/dependency_injection.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/gemini/app_gemini.dart';
import 'package:close_ai/enum/the_states.dart';
import 'package:close_ai/features/homescreen/data/model/home_response.dart';
import 'package:close_ai/features/homescreen/domain/usecase/home_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeUsecase) : super(const _HomeState()) {
    on<_Home>(_fetchData, transformer: droppable());
    on<_StartChat>(_startChat);
  }
  // ignore: unused_field
  final HomeUsecase _homeUsecase;

  FutureOr<void> _fetchData(_Home event, Emitter<HomeState> emit) async {
    final newList = List<Content>.from(state.chathistory ?? [])
      ..addAll([
        Content.text(event.prompt),
        Content.model([TextPart('Please wait..')])
      ]);
    emit(
      state.copyWith(theStates: TheStates.loading, chathistory: newList),
    );
    final partedText = TextPart(event.prompt);

    final bytesImages = await Future.wait(
      event.files.map((file) => file.readAsBytes()),
    );
    final imageParts = bytesImages.map((e) => DataPart('image/jpeg', e));
    final content = Content.multi([partedText, ...imageParts]);

    final result = await sl<GeminiClient>()
        .generateContentFromImage(prompt: event.prompt, content: content);
    // ignore: cascade_invocations
    result.fold((l) {
      _addToList(l.message, event, emit);
    }, (r) {
      _addToList(r, event, emit);
    });
  }

  void _addToList(String r, HomeEvent event, Emitter<HomeState> emit) {
    final newList = List<Content>.from(state.chathistory ?? [])
      ..removeLast()
      ..add(Content.model([TextPart(r)]));

    emit(
      state.copyWith(
        theStates: TheStates.success,
        chathistory: newList,
        progressPrompt: null,
      ),
    );
  }

  FutureOr<void> _startChat(_StartChat event, Emitter<HomeState> emit) async {
    final newList = List<Content>.from(state.chathistory ?? [])
      ..addAll([
        Content.text(event.prompt),
        Content.model([TextPart('Please wait..')])
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
      // ignore: cancel_subscriptions
      final c = r.listen((events) {
        newList.removeLast();
        streamedtext = streamedtext + (events.text ?? '');

        newList.add(Content.model([TextPart(streamedtext)]));
        emit(state.copyWith(theStates: TheStates.initial));
        emit(
          state.copyWith(
            theStates: TheStates.success,
            chathistory: newList,
            progressPrompt: null,
          ),
        );
      });
      await c.asFuture();
    });
  }
}
