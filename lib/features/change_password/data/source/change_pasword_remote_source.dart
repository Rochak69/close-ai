import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangePaswordRemoteSource {
  ChangePaswordRemoteSource();

  Future<ApiResponse<bool>> sendOtp({
    required String email,
  }) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      // ignore: empty_catches
    } catch (e) {}

    return const ApiResponse(data: true);
  }
}
