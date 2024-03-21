part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState({
    @Default(TheStates.initial) TheStates theStates,
    List<ConversationResponse>? conversationHistory,
    @Default(InternalAppError()) AppError error,
  }) = _DrawerState;
}
