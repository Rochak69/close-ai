import 'package:close_ai/constants/app_endpoints.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/dio_provider/dio_api_client.dart';
import 'package:close_ai/features/homescreen/data/model/home_response.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeRemoteSource {
  HomeRemoteSource(
    this._client,
  );
  final DioApiClient _client;

  Future<ApiResponse<HomeResponse>> fetchData({required String prompt}) async {
    final loginResponse = await _client.httpPost<dynamic>(
      serviceName: AppEndpoints.login,
    );
    final response = ApiResponse(data: HomeResponse.fromJson(loginResponse));

    return response;
  }
}
