// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentResponseImpl _$$ContentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentResponseImpl(
      role: json['role'] as String?,
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ContentResponseImplToJson(
        _$ContentResponseImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'text': instance.text,
      'images': instance.images,
    };
