import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:close_ai/features/change_password/domain/usecase/send_otp_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

@lazySingleton
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc(this._sendOtpUsecase) : super(const _Initial()) {
    on<_SendOtp>(_sendOtp);
  }
  final SendOtpUsecase _sendOtpUsecase;

  FutureOr<void> _sendOtp(
    _SendOtp event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(const ChangePasswordState.loading());
    final result = await _sendOtpUsecase.call(SendOtpParam(event.email));
    result.fold(
      (l) {
        emit(const ChangePasswordState.error());
      },
      (r) {
        emit(const ChangePasswordState.success());
      },
    );
  }
}
