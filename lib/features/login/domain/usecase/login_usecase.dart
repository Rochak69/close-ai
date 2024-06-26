import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/usecase/usecase.dart';
import 'package:close_ai/features/login/domain/repository/login_repository.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

class LoginParam {
  LoginParam(this.email, this.password);
  final String email;
  final String password;
}

@injectable
class LoginUsecase extends UseCase<ApiResponse<SignUpResponse>, LoginParam> {
  LoginUsecase(this._loginRepository);
  final LoginRepository _loginRepository;

  @override
  Future<Either<AppError, ApiResponse<SignUpResponse>>> call(
          LoginParam param,) =>
      _loginRepository.login(email: param.email, password: param.password);
}
