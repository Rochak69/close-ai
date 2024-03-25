import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpRemoteSource {
  SignUpRemoteSource();

  Future<ApiResponse<SignUpResponse>> signup({
    required String email,
    required String pasword,
  }) async {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: pasword,
    );

    return ApiResponse(
      data: SignUpResponse(
        email: credential.user?.email,
        name: credential.user?.displayName,
        uuid: credential.user?.uid,
      ),
    );
  }
}
