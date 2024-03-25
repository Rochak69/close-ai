import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/usecase/usecase.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:close_ai/features/signup/domain/repository/signup_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

class SignUpParam {
  SignUpParam(this.email, this.password);
  final String email;
  final String password;
}

@injectable
class SignUpUsecase extends UseCase<ApiResponse<SignUpResponse>, SignUpParam> {
  SignUpUsecase(this._repository);
  final SignUpRepository _repository;

  @override
  Future<Either<AppError, ApiResponse<SignUpResponse>>> call(
    SignUpParam param,
  ) =>
      _repository.signup(email: param.email, password: param.password);
}
