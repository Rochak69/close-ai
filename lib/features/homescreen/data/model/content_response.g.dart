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
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ContentResponseImplToJson(
        _$ContentResponseImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'text': instance.text,
      'image': instance.image,
    };
