import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:close_ai/features/login/domain/usecase/login_usecase.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUsecase) : super(const _Initial()) {
    on<_Login>(_login, transformer: droppable());
  }
  // ignore: unused_field
  final LoginUsecase _loginUsecase;

  FutureOr<void> _login(LoginEvent event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    final result =
        await _loginUsecase.call(LoginParam(event.email, event.password));
    result.fold((l) {
      emit(LoginState.error(errorMessage: l.message));
    }, (r) {
      if (r.data == null) {
        emit(const LoginState.error(errorMessage: 'No User details'));
      } else {
        emit(LoginState.success(userDetails: r.data!));
      }
    });
  }
}
