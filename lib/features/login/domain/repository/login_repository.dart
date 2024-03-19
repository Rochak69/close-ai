import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/login/data/model/login_response.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepository {
  Future<Either<AppError, ApiResponse<LoginResponse>>> login({
    required String email,
    required String password,
  });
}
