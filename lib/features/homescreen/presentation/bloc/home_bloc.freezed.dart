// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  String get prompt => throw _privateConstructorUsedError;
  List<XFile>? get files => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prompt, List<XFile>? files) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prompt, List<XFile>? files)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prompt, List<XFile>? files)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Home value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({String prompt, List<XFile>? files});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeImplCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String prompt, List<XFile>? files});
}

/// @nodoc
class __$$HomeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? files = freezed,
  }) {
    return _then(_$HomeImpl(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
    ));
  }
}

/// @nodoc

class _$HomeImpl implements _Home {
  const _$HomeImpl({required this.prompt, final List<XFile>? files})
      : _files = files;

  @override
  final String prompt;
  final List<XFile>? _files;
  @override
  List<XFile>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeEvent.fetch(prompt: $prompt, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prompt, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      __$$HomeImplCopyWithImpl<_$HomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prompt, List<XFile>? files) fetch,
  }) {
    return fetch(prompt, files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prompt, List<XFile>? files)? fetch,
  }) {
    return fetch?.call(prompt, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prompt, List<XFile>? files)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(prompt, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Home value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Home implements HomeEvent {
  const factory _Home(
      {required final String prompt, final List<XFile>? files}) = _$HomeImpl;

  @override
  String get prompt;
  @override
  List<XFile>? get files;
  @override
  @JsonKey(ignore: true)
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  TheStates get theStates => throw _privateConstructorUsedError;
  List<HomeResponse>? get homeResponse => throw _privateConstructorUsedError;
  HomeResponse? get progressPrompt => throw _privateConstructorUsedError;
  AppError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {TheStates theStates,
      List<HomeResponse>? homeResponse,
      HomeResponse? progressPrompt,
      AppError error});

  $HomeResponseCopyWith<$Res>? get progressPrompt;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theStates = null,
    Object? homeResponse = freezed,
    Object? progressPrompt = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      homeResponse: freezed == homeResponse
          ? _value.homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as List<HomeResponse>?,
      progressPrompt: freezed == progressPrompt
          ? _value.progressPrompt
          : progressPrompt // ignore: cast_nullable_to_non_nullable
              as HomeResponse?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeResponseCopyWith<$Res>? get progressPrompt {
    if (_value.progressPrompt == null) {
      return null;
    }

    return $HomeResponseCopyWith<$Res>(_value.progressPrompt!, (value) {
      return _then(_value.copyWith(progressPrompt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TheStates theStates,
      List<HomeResponse>? homeResponse,
      HomeResponse? progressPrompt,
      AppError error});

  @override
  $HomeResponseCopyWith<$Res>? get progressPrompt;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theStates = null,
    Object? homeResponse = freezed,
    Object? progressPrompt = freezed,
    Object? error = null,
  }) {
    return _then(_$HomeStateImpl(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      homeResponse: freezed == homeResponse
          ? _value._homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as List<HomeResponse>?,
      progressPrompt: freezed == progressPrompt
          ? _value.progressPrompt
          : progressPrompt // ignore: cast_nullable_to_non_nullable
              as HomeResponse?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.theStates = TheStates.initial,
      final List<HomeResponse>? homeResponse,
      this.progressPrompt,
      this.error = const InternalAppError()})
      : _homeResponse = homeResponse;

  @override
  @JsonKey()
  final TheStates theStates;
  final List<HomeResponse>? _homeResponse;
  @override
  List<HomeResponse>? get homeResponse {
    final value = _homeResponse;
    if (value == null) return null;
    if (_homeResponse is EqualUnmodifiableListView) return _homeResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final HomeResponse? progressPrompt;
  @override
  @JsonKey()
  final AppError error;

  @override
  String toString() {
    return 'HomeState(theStates: $theStates, homeResponse: $homeResponse, progressPrompt: $progressPrompt, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.theStates, theStates) ||
                other.theStates == theStates) &&
            const DeepCollectionEquality()
                .equals(other._homeResponse, _homeResponse) &&
            (identical(other.progressPrompt, progressPrompt) ||
                other.progressPrompt == progressPrompt) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      theStates,
      const DeepCollectionEquality().hash(_homeResponse),
      progressPrompt,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final TheStates theStates,
      final List<HomeResponse>? homeResponse,
      final HomeResponse? progressPrompt,
      final AppError error}) = _$HomeStateImpl;

  @override
  TheStates get theStates;
  @override
  List<HomeResponse>? get homeResponse;
  @override
  HomeResponse? get progressPrompt;
  @override
  AppError get error;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
