import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_response.freezed.dart';
part 'conversation_response.g.dart';

@freezed
class ConversationResponse with _$ConversationResponse {
  const factory ConversationResponse({
    String? id,
    String? title,
    GeminiModelEnum? geminiModelEnum,
  }) = _ConversationResponse;

  factory ConversationResponse.fromJson(Map<String, dynamic> json) =>
      _$ConversationResponseFromJson(json);
}
