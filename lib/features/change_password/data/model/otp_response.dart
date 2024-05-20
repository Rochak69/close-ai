import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_response.freezed.dart';
part 'otp_response.g.dart';

@freezed
class OtpResponse with _$OtpResponse {
  const factory OtpResponse({String? otp}) = _OtpResponse;
  factory OtpResponse.fromJson(Map<String, Object?> json) =>
      _$OtpResponseFromJson(json);
}
