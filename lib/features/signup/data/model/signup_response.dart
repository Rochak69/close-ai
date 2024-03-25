import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.freezed.dart';
part 'signup_response.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({String? uuid, String? name, String? email}) =
      _SignUpResponse;
  factory SignUpResponse.fromJson(Map<String, Object?> json) =>
      _$SignUpResponseFromJson(json);
}
