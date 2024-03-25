import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpRepository {
  Future<Either<AppError, ApiResponse<SignUpResponse>>> signup({
    required String email,
    required String password,
  });
}
