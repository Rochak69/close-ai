part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;
  const factory SignupState.error({required String errorMessage}) = _Error;
  const factory SignupState.success({required SignUpResponse userDetails}) =
      _Success;
}
