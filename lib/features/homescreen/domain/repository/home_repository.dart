import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/homescreen/data/model/home_response.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<AppError, ApiResponse<HomeResponse>>> fetchData(
      {required String prompt,});
}
