part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(TheStates.initial) TheStates theStates,
    LoginResponse? loginResponse,
    @Default(InternalAppError()) AppError error,
  }) = _LoginState;
}
