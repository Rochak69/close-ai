// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DrawerResponse _$DrawerResponseFromJson(Map<String, dynamic> json) {
  return _DrawerResponse.fromJson(json);
}

/// @nodoc
mixin _$DrawerResponse {
  List<String>? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrawerResponseCopyWith<DrawerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerResponseCopyWith<$Res> {
  factory $DrawerResponseCopyWith(
          DrawerResponse value, $Res Function(DrawerResponse) then) =
      _$DrawerResponseCopyWithImpl<$Res, DrawerResponse>;
  @useResult
  $Res call({List<String>? content});
}

/// @nodoc
class _$DrawerResponseCopyWithImpl<$Res, $Val extends DrawerResponse>
    implements $DrawerResponseCopyWith<$Res> {
  _$DrawerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawerResponseImplCopyWith<$Res>
    implements $DrawerResponseCopyWith<$Res> {
  factory _$$DrawerResponseImplCopyWith(_$DrawerResponseImpl value,
          $Res Function(_$DrawerResponseImpl) then) =
      __$$DrawerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? content});
}

/// @nodoc
class __$$DrawerResponseImplCopyWithImpl<$Res>
    extends _$DrawerResponseCopyWithImpl<$Res, _$DrawerResponseImpl>
    implements _$$DrawerResponseImplCopyWith<$Res> {
  __$$DrawerResponseImplCopyWithImpl(
      _$DrawerResponseImpl _value, $Res Function(_$DrawerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$DrawerResponseImpl(
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DrawerResponseImpl
    with DiagnosticableTreeMixin
    implements _DrawerResponse {
  const _$DrawerResponseImpl({final List<String>? content})
      : _content = content;

  factory _$DrawerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DrawerResponseImplFromJson(json);

  final List<String>? _content;
  @override
  List<String>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrawerResponse(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrawerResponse'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerResponseImpl &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerResponseImplCopyWith<_$DrawerResponseImpl> get copyWith =>
      __$$DrawerResponseImplCopyWithImpl<_$DrawerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DrawerResponseImplToJson(
      this,
    );
  }
}

abstract class _DrawerResponse implements DrawerResponse {
  const factory _DrawerResponse({final List<String>? content}) =
      _$DrawerResponseImpl;

  factory _DrawerResponse.fromJson(Map<String, dynamic> json) =
      _$DrawerResponseImpl.fromJson;

  @override
  List<String>? get content;
  @override
  @JsonKey(ignore: true)
  _$$DrawerResponseImplCopyWith<_$DrawerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
