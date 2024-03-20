// ignore_for_file: unused_field

import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/dio_provider/dio_api_client.dart';
import 'package:close_ai/core/preferences/preferences.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

@injectable
class DrawerRemoteSource {
  DrawerRemoteSource(this._client, this._preferences);
  final DioApiClient _client;
  final Preferences _preferences;

  Future<ApiResponseForList<Content>> getChatHistory({
    required String id,
  }) async {
    return ApiResponseForList(data: []);
  }
}
