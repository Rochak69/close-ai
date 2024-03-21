// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentResponse _$ContentResponseFromJson(Map<String, dynamic> json) {
  return _ContentResponse.fromJson(json);
}

/// @nodoc
mixin _$ContentResponse {
  String? get role => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentResponseCopyWith<ContentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentResponseCopyWith<$Res> {
  factory $ContentResponseCopyWith(
          ContentResponse value, $Res Function(ContentResponse) then) =
      _$ContentResponseCopyWithImpl<$Res, ContentResponse>;
  @useResult
  $Res call({String? role, String? text, String? image});
}

/// @nodoc
class _$ContentResponseCopyWithImpl<$Res, $Val extends ContentResponse>
    implements $ContentResponseCopyWith<$Res> {
  _$ContentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentResponseImplCopyWith<$Res>
    implements $ContentResponseCopyWith<$Res> {
  factory _$$ContentResponseImplCopyWith(_$ContentResponseImpl value,
          $Res Function(_$ContentResponseImpl) then) =
      __$$ContentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? role, String? text, String? image});
}

/// @nodoc
class __$$ContentResponseImplCopyWithImpl<$Res>
    extends _$ContentResponseCopyWithImpl<$Res, _$ContentResponseImpl>
    implements _$$ContentResponseImplCopyWith<$Res> {
  __$$ContentResponseImplCopyWithImpl(
      _$ContentResponseImpl _value, $Res Function(_$ContentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ContentResponseImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentResponseImpl implements _ContentResponse {
  const _$ContentResponseImpl({this.role, this.text, this.image});

  factory _$ContentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentResponseImplFromJson(json);

  @override
  final String? role;
  @override
  final String? text;
  @override
  final String? image;

  @override
  String toString() {
    return 'ContentResponse(role: $role, text: $text, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentResponseImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, text, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentResponseImplCopyWith<_$ContentResponseImpl> get copyWith =>
      __$$ContentResponseImplCopyWithImpl<_$ContentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentResponseImplToJson(
      this,
    );
  }
}

abstract class _ContentResponse implements ContentResponse {
  const factory _ContentResponse(
      {final String? role,
      final String? text,
      final String? image}) = _$ContentResponseImpl;

  factory _ContentResponse.fromJson(Map<String, dynamic> json) =
      _$ContentResponseImpl.fromJson;

  @override
  String? get role;
  @override
  String? get text;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ContentResponseImplCopyWith<_$ContentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
