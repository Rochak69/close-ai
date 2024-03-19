part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(TheStates.initial) TheStates theStates,
    List<HomeResponse>? homeResponse,
    HomeResponse? progressPrompt,
    @Default(InternalAppError()) AppError error,
  }) = _HomeState;
}
