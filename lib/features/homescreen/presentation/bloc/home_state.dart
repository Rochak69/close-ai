part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(TheStates.initial) TheStates theStates,
    List<ContentResponse>? chathistory,
    String? selectedCoversationId,
    SignUpResponse? signUpResponse,
    @Default(GeminiModelEnum.text) GeminiModelEnum currentModel,
    @Default(InternalAppError()) AppError error,
  }) = _HomeState;
}
