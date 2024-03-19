// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  String? get result => throw _privateConstructorUsedError;
  String? get prompt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
  @useResult
  $Res call({String? result, String? prompt});
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? prompt = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeResponseImplCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$HomeResponseImplCopyWith(
          _$HomeResponseImpl value, $Res Function(_$HomeResponseImpl) then) =
      __$$HomeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? result, String? prompt});
}

/// @nodoc
class __$$HomeResponseImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseImpl>
    implements _$$HomeResponseImplCopyWith<$Res> {
  __$$HomeResponseImplCopyWithImpl(
      _$HomeResponseImpl _value, $Res Function(_$HomeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? prompt = freezed,
  }) {
    return _then(_$HomeResponseImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseImpl implements _HomeResponse {
  const _$HomeResponseImpl({this.result, this.prompt});

  factory _$HomeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseImplFromJson(json);

  @override
  final String? result;
  @override
  final String? prompt;

  @override
  String toString() {
    return 'HomeResponse(result: $result, prompt: $prompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      __$$HomeResponseImplCopyWithImpl<_$HomeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeResponse implements HomeResponse {
  const factory _HomeResponse({final String? result, final String? prompt}) =
      _$HomeResponseImpl;

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$HomeResponseImpl.fromJson;

  @override
  String? get result;
  @override
  String? get prompt;
  @override
  @JsonKey(ignore: true)
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
