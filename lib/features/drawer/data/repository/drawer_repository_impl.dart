import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/drawer/data/source/drawer_remote_source.dart';
import 'package:close_ai/features/drawer/domain/repository/drawer_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DrawerRepository)
class DrawerRepositoryImpl extends DrawerRepository {
  DrawerRepositoryImpl(this._remoteSource);
  final DrawerRemoteSource _remoteSource;
  @override
  Future<Either<AppError, ApiResponseForList<Content>>> getChatHistory(
      {required String id,}) async {
    try {
      final result = await _remoteSource.getChatHistory(id: id);
      return right(result);
    } catch (e) {
      if (e is ApiErrorResponse) {
        return left(ApiErrorResponse(message: e.message));
      } else {
        return left(const InternalAppError());
      }
    }
  }
}
