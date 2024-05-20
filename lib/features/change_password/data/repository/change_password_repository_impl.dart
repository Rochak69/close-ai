import 'package:close_ai/constants/app_constant.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/change_password/data/source/change_pasword_remote_source.dart';
import 'package:close_ai/features/change_password/domain/repository/change_password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChangePasswordRepository)
class ChangePasswordRepositoryImpl extends ChangePasswordRepository {
  ChangePasswordRepositoryImpl(this._remoteSource);
  final ChangePaswordRemoteSource _remoteSource;

  @override
  Future<Either<AppError, ApiResponse<dynamic>>> sendOtp({
    required String email,
  }) async {
    try {
      final result = await _remoteSource.sendOtp(
        email: email,
      );
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(
        InternalAppError(message: e.message ?? AppConstants.errorMessage),
      );
    } catch (e) {
      return left(const InternalAppError());
    }
  }
}
