import 'package:close_ai/constants/app_endpoints.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/dio_provider/dio_api_client.dart';
import 'package:close_ai/core/preferences/preferences.dart';
import 'package:close_ai/features/login/data/model/login_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginRemoteSource {
  LoginRemoteSource(this._client, this._preferences);
  final DioApiClient _client;
  final Preferences _preferences;

  Future<ApiResponse<LoginResponse>> login({
    required String email,
    required String pasword,
  }) async {
    final formData = FormData.fromMap(
      {'email': email, 'password': pasword, 'remember_me': true},
    );

    final loginResponse = await _client.httpPost<dynamic>(
      serviceName: AppEndpoints.login,
      formdata: formData,
    );
    final response = ApiResponse(data: LoginResponse.fromJson(loginResponse));
    await _preferences.saveString(
      Preference.accessToken,
      response.data?.accessToken ?? '',
    );

    return response;
  }
}
