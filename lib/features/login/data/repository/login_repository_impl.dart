import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/login/data/model/login_response.dart';
import 'package:close_ai/features/login/data/source/auth_remote_source.dart';
import 'package:close_ai/features/login/domain/repository/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl extends LoginRepository {
  LoginRepositoryImpl(this._remoteSource);
  final LoginRemoteSource _remoteSource;
  @override
  Future<Either<AppError, ApiResponse<LoginResponse>>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _remoteSource.login(
        email: email,
        pasword: password,
      );
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
