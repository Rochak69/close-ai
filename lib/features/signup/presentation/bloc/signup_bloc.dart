import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:close_ai/features/signup/domain/usecase/signup_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(this._signUpUsecase) : super(const _Initial()) {
    on<_WithCredential>(
      _signupWithCredential,
    );
  }
  final SignUpUsecase _signUpUsecase;

  FutureOr<void> _signupWithCredential(
    _WithCredential event,
    Emitter<SignupState> emit,
  ) async {
    emit(const SignupState.loading());
    final result =
        await _signUpUsecase.call(SignUpParam(event.email, event.password));
    result.fold((l) {
      emit(SignupState.error(errorMessage: l.message));
    }, (r) {
      if (r.data == null) {
        emit(const SignupState.error(errorMessage: 'No user details'));
      }
      emit(SignupState.success(userDetails: r.data!));
    });
  }
}
