part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.sendOtp({
    required String email,
  }) = _SendOtp;
  const factory ChangePasswordEvent.verifyOtp() = _ChangePassword;
}
