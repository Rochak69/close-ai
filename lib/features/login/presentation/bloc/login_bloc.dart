import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/enum/the_states.dart';
import 'package:close_ai/features/login/data/model/login_response.dart';
import 'package:close_ai/features/login/domain/usecase/login_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUsecase) : super(const _LoginState()) {
    on<_Login>(_login, transformer: droppable());
  }
  // ignore: unused_field
  final LoginUsecase _loginUsecase;

  FutureOr<void> _login(LoginEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWith(theStates: TheStates.loading));
    await Future.delayed(
      const Duration(seconds: 2),
    );
    emit(state.copyWith(theStates: TheStates.success));
  }
}
