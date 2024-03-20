import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drawer_response.freezed.dart';
part 'drawer_response.g.dart';

@freezed
class DrawerResponse with _$DrawerResponse {
  const factory DrawerResponse({List<String>? content}) = _DrawerResponse;
  factory DrawerResponse.fromJson(Map<String, Object?> json) =>
      _$DrawerResponseFromJson(json);
}
