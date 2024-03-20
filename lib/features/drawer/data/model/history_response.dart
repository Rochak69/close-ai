import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
class HistoryResponse with _$HistoryResponse {
  const factory HistoryResponse({
    int? id,
    String? title,
  }) = _HistoryResponse;
  factory HistoryResponse.fromJson(Map<String, Object?> json) =>
      _$HistoryResponseFromJson(json);
}
