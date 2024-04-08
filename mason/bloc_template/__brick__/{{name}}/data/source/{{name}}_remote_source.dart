import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:injectable/injectable.dart';
import 'package:close_ai/core/dio_provider/dio_api_client.dart';
@injectable
class {{name.pascalCase()}}RemoteSource {
  {{name.pascalCase()}}RemoteSource(this._client);
  final DioApiClient _client;

  Future<ApiResponse<dynamic>> {{name}}() async {
      throw UnimplementedError();
    //   final response =
    //       await _client.httpGet<dynamic>("", queryParameters: param);
    //   return right(
    //     ApiResponseForList(
    //       data: (response['data'] as List<dynamic>)
    //           .map((e) => CountryResponse.fromJson(e))
    //           .toList(),
    //       paginationInfo: PaginationInfo.fromResponse(response),
    //     ),
    //   );
  }
}
