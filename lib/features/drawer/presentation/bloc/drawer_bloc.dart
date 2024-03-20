import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/enum/the_states.dart';
import 'package:close_ai/features/drawer/data/model/history_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';
part 'drawer_bloc.freezed.dart';

@injectable
class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(const _DrawerState()) {
    on<_GetChatHistory>(_getAllHistory);
  }

  FutureOr<void> _getAllHistory(
    _GetChatHistory event,
    Emitter<DrawerState> emit,
  ) async {
    emit(state.copyWith(theStates: TheStates.loading));

    emit(
      state.copyWith(
        theStates: TheStates.success,
        allhistory: [
          const HistoryResponse(title: 'This is history 7'),
          const HistoryResponse(title: 'This is history 0'),
          const HistoryResponse(title: 'This is history 1'),
          const HistoryResponse(title: 'This is history 2'),
          const HistoryResponse(title: 'This is history 3'),
          const HistoryResponse(title: 'This is history 4'),
          const HistoryResponse(title: 'This is history 5'),
          const HistoryResponse(title: 'This is history 6'),
        ],
      ),
    );
  }
}
