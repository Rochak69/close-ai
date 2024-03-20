import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

abstract class DrawerRepository {
  Future<Either<AppError, ApiResponseForList<Content>>> getChatHistory(
      {required String id,});
}
