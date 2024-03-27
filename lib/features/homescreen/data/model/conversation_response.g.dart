// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationResponseImpl _$$ConversationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationResponseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      geminiModelEnum: $enumDecodeNullable(
          _$GeminiModelEnumEnumMap, json['geminiModelEnum']),
    );

Map<String, dynamic> _$$ConversationResponseImplToJson(
        _$ConversationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'geminiModelEnum': _$GeminiModelEnumEnumMap[instance.geminiModelEnum],
    };

const _$GeminiModelEnumEnumMap = {
  GeminiModelEnum.text: 'text',
  GeminiModelEnum.image: 'image',
};
