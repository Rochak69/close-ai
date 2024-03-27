// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationResponse _$ConversationResponseFromJson(Map<String, dynamic> json) {
  return _ConversationResponse.fromJson(json);
}

/// @nodoc
mixin _$ConversationResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  GeminiModelEnum? get geminiModelEnum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationResponseCopyWith<ConversationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationResponseCopyWith<$Res> {
  factory $ConversationResponseCopyWith(ConversationResponse value,
          $Res Function(ConversationResponse) then) =
      _$ConversationResponseCopyWithImpl<$Res, ConversationResponse>;
  @useResult
  $Res call({String? id, String? title, GeminiModelEnum? geminiModelEnum});
}

/// @nodoc
class _$ConversationResponseCopyWithImpl<$Res,
        $Val extends ConversationResponse>
    implements $ConversationResponseCopyWith<$Res> {
  _$ConversationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? geminiModelEnum = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      geminiModelEnum: freezed == geminiModelEnum
          ? _value.geminiModelEnum
          : geminiModelEnum // ignore: cast_nullable_to_non_nullable
              as GeminiModelEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationResponseImplCopyWith<$Res>
    implements $ConversationResponseCopyWith<$Res> {
  factory _$$ConversationResponseImplCopyWith(_$ConversationResponseImpl value,
          $Res Function(_$ConversationResponseImpl) then) =
      __$$ConversationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, GeminiModelEnum? geminiModelEnum});
}

/// @nodoc
class __$$ConversationResponseImplCopyWithImpl<$Res>
    extends _$ConversationResponseCopyWithImpl<$Res, _$ConversationResponseImpl>
    implements _$$ConversationResponseImplCopyWith<$Res> {
  __$$ConversationResponseImplCopyWithImpl(_$ConversationResponseImpl _value,
      $Res Function(_$ConversationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? geminiModelEnum = freezed,
  }) {
    return _then(_$ConversationResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      geminiModelEnum: freezed == geminiModelEnum
          ? _value.geminiModelEnum
          : geminiModelEnum // ignore: cast_nullable_to_non_nullable
              as GeminiModelEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationResponseImpl implements _ConversationResponse {
  const _$ConversationResponseImpl({this.id, this.title, this.geminiModelEnum});

  factory _$ConversationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final GeminiModelEnum? geminiModelEnum;

  @override
  String toString() {
    return 'ConversationResponse(id: $id, title: $title, geminiModelEnum: $geminiModelEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.geminiModelEnum, geminiModelEnum) ||
                other.geminiModelEnum == geminiModelEnum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, geminiModelEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationResponseImplCopyWith<_$ConversationResponseImpl>
      get copyWith =>
          __$$ConversationResponseImplCopyWithImpl<_$ConversationResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationResponseImplToJson(
      this,
    );
  }
}

abstract class _ConversationResponse implements ConversationResponse {
  const factory _ConversationResponse(
      {final String? id,
      final String? title,
      final GeminiModelEnum? geminiModelEnum}) = _$ConversationResponseImpl;

  factory _ConversationResponse.fromJson(Map<String, dynamic> json) =
      _$ConversationResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  GeminiModelEnum? get geminiModelEnum;
  @override
  @JsonKey(ignore: true)
  _$$ConversationResponseImplCopyWith<_$ConversationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
