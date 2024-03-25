part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.withCredential({
    required String email,
    required String password,
  }) = _WithCredential;
}
