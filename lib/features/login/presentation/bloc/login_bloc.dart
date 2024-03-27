import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:close_ai/constants/app_constant.dart';
import 'package:close_ai/features/login/domain/usecase/login_usecase.dart';
import 'package:close_ai/features/login/enum/social_provider_enum.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUsecase, this._googleSignIn) : super(const _Initial()) {
    on<_Login>(_login, transformer: droppable());
    on<_LoginWithFirebase>(_loginWithFirebase, transformer: droppable());
  }
  // ignore: unused_field
  final LoginUsecase _loginUsecase;
  final GoogleSignIn _googleSignIn;

  FutureOr<void> _login(_Login event, Emitter<LoginState> emit) async {
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

  FutureOr<void> _loginWithFirebase(
    _LoginWithFirebase event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(const LoginState.loading());

      await _googleSignIn.signOut();

      final googleUser = await _googleSignIn.signIn();

      final googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final socialUser =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (socialUser.user == null) {
        emit(const LoginState.error(errorMessage: AppConstants.errorMessage));
      } else {
        emit(
          LoginState.success(
            userDetails: SignUpResponse(
              email: socialUser.user?.email,
              name: socialUser.user?.displayName,
              uuid: socialUser.user?.uid,
            ),
          ),
        );
      }
    } catch (e) {
      emit(const LoginState.error(errorMessage: AppConstants.errorMessage));
    }

    // result.fold((l) {
    //   emit(LoginState.error(errorMessage: l.message));
    // }, (r) {
    //   if (r.data == null) {
    //     emit(const LoginState.error(errorMessage: 'No User details'));
    //   } else {
    //     emit(LoginState.success(userDetails: r.data!));
    //   }
    // });
  }
}
