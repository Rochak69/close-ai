import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:dartz/dartz.dart';

abstract class {{name.pascalCase()}}Repository {
  Future<Either<AppError, ApiResponse<dynamic>>> {{name}}();
}
