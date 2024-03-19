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
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeUsecase) : super(const _HomeState()) {
    on<_Home>(_fetchData, transformer: droppable());
  }
  // ignore: unused_field
  final HomeUsecase _homeUsecase;

  FutureOr<void> _fetchData(HomeEvent event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        theStates: TheStates.loading,
        progressPrompt:
            HomeResponse(prompt: event.prompt, result: 'Please wait...'),
      ),
    );

    final result = event.files == null || event.files!.isEmpty
        ? await sl<GeminiClient>().generateContentFromText(
            prompt: event.prompt,
          )
        : await sl<GeminiClient>().generateContentFromImage(
            prompt: event.prompt,
            files: event.files?.map((e) => File(e.path)).toList(),
          );
    // ignore: cascade_invocations
    result.fold((l) {
      _addToList(l.message, event, emit);
    }, (r) {
      _addToList(r, event, emit);
    });
  }

  void _addToList(String r, HomeEvent event, Emitter<HomeState> emit) {
    final newList = List<HomeResponse>.from(state.homeResponse ?? [])
      ..add(
        HomeResponse(
          result: r,
          prompt: event.prompt,
        ),
      );

    emit(
      state.copyWith(
        theStates: TheStates.success,
        homeResponse: newList,
        progressPrompt: null,
      ),
    );
  }
}
