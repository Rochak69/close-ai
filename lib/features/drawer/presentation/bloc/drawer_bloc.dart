import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/firestore/app_firestore.dart';
import 'package:close_ai/enum/the_states.dart';

import 'package:close_ai/features/homescreen/data/model/conversation_response.dart';
import 'package:close_ai/utlis/app_globals.dart';
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
    final conversation =
        await AppFirestore.conversationDocument(AppGlobals.uuid).get();
    final conversationData = conversation.data();
    final result = (conversationData?['data'] as List<dynamic>?)
        ?.map((e) => ConversationResponse.fromJson(e))
        .toList();

    emit(
      state.copyWith(theStates: TheStates.success, conversationHistory: result),
    );
  }
}
