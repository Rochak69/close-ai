import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/usecase/usecase.dart';
import 'package:close_ai/features/change_password/domain/repository/change_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

class SendOtpParam {
  SendOtpParam(
    this.email,
  );
  final String email;
}

@injectable
class SendOtpUsecase extends UseCase<ApiResponse<dynamic>, SendOtpParam> {
  SendOtpUsecase(this._repository);
  final ChangePasswordRepository _repository;

  @override
  Future<Either<AppError, ApiResponse<dynamic>>> call(
    SendOtpParam param,
  ) =>
      _repository.sendOtp(
        email: param.email,
      );
}
