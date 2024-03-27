import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_response.freezed.dart';
part 'content_response.g.dart';

@freezed
class ContentResponse with _$ContentResponse {
  const factory ContentResponse({
    String? role,
    String? text,
    List<String>? images,
  }) = _ContentResponse;

  factory ContentResponse.fromJson(Map<String, dynamic> json) =>
      _$ContentResponseFromJson(json);
}
