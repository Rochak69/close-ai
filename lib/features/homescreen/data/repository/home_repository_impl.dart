import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/homescreen/data/model/home_response.dart';
import 'package:close_ai/features/homescreen/data/source/home_remote_source.dart';
import 'package:close_ai/features/homescreen/domain/repository/home_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this._remoteSource);
  final HomeRemoteSource _remoteSource;
  @override
  Future<Either<AppError, ApiResponse<HomeResponse>>> fetchData({
    required String prompt,
  }) async {
    try {
      final result = await _remoteSource.fetchData(prompt: prompt);
      throw Exception();
    } catch (e) {
      if (e is ApiErrorResponse) {
        return left(ApiErrorResponse(message: e.message));
      } else {
        return left(const InternalAppError());
      }
    }
  }
}
