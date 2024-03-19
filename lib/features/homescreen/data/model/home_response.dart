import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse({String? result, String? prompt}) = _HomeResponse;
  factory HomeResponse.fromJson(Map<String, Object?> json) =>
      _$HomeResponseFromJson(json);
}
