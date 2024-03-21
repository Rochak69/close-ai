// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChatHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChatHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChatHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatHistory value) getChatHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatHistory value)? getChatHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatHistory value)? getChatHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerEventCopyWith<$Res> {
  factory $DrawerEventCopyWith(
          DrawerEvent value, $Res Function(DrawerEvent) then) =
      _$DrawerEventCopyWithImpl<$Res, DrawerEvent>;
}

/// @nodoc
class _$DrawerEventCopyWithImpl<$Res, $Val extends DrawerEvent>
    implements $DrawerEventCopyWith<$Res> {
  _$DrawerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetChatHistoryImplCopyWith<$Res> {
  factory _$$GetChatHistoryImplCopyWith(_$GetChatHistoryImpl value,
          $Res Function(_$GetChatHistoryImpl) then) =
      __$$GetChatHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetChatHistoryImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$GetChatHistoryImpl>
    implements _$$GetChatHistoryImplCopyWith<$Res> {
  __$$GetChatHistoryImplCopyWithImpl(
      _$GetChatHistoryImpl _value, $Res Function(_$GetChatHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetChatHistoryImpl implements _GetChatHistory {
  const _$GetChatHistoryImpl();

  @override
  String toString() {
    return 'DrawerEvent.getChatHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetChatHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChatHistory,
  }) {
    return getChatHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChatHistory,
  }) {
    return getChatHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChatHistory,
    required TResult orElse(),
  }) {
    if (getChatHistory != null) {
      return getChatHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatHistory value) getChatHistory,
  }) {
    return getChatHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatHistory value)? getChatHistory,
  }) {
    return getChatHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatHistory value)? getChatHistory,
    required TResult orElse(),
  }) {
    if (getChatHistory != null) {
      return getChatHistory(this);
    }
    return orElse();
  }
}

abstract class _GetChatHistory implements DrawerEvent {
  const factory _GetChatHistory() = _$GetChatHistoryImpl;
}

/// @nodoc
mixin _$DrawerState {
  TheStates get theStates => throw _privateConstructorUsedError;
  List<ConversationResponse>? get conversationHistory =>
      throw _privateConstructorUsedError;
  AppError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawerStateCopyWith<DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res, DrawerState>;
  @useResult
  $Res call(
      {TheStates theStates,
      List<ConversationResponse>? conversationHistory,
      AppError error});
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res, $Val extends DrawerState>
    implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theStates = null,
    Object? conversationHistory = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      conversationHistory: freezed == conversationHistory
          ? _value.conversationHistory
          : conversationHistory // ignore: cast_nullable_to_non_nullable
              as List<ConversationResponse>?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawerStateImplCopyWith<$Res>
    implements $DrawerStateCopyWith<$Res> {
  factory _$$DrawerStateImplCopyWith(
          _$DrawerStateImpl value, $Res Function(_$DrawerStateImpl) then) =
      __$$DrawerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TheStates theStates,
      List<ConversationResponse>? conversationHistory,
      AppError error});
}

/// @nodoc
class __$$DrawerStateImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$DrawerStateImpl>
    implements _$$DrawerStateImplCopyWith<$Res> {
  __$$DrawerStateImplCopyWithImpl(
      _$DrawerStateImpl _value, $Res Function(_$DrawerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theStates = null,
    Object? conversationHistory = freezed,
    Object? error = null,
  }) {
    return _then(_$DrawerStateImpl(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      conversationHistory: freezed == conversationHistory
          ? _value._conversationHistory
          : conversationHistory // ignore: cast_nullable_to_non_nullable
              as List<ConversationResponse>?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$DrawerStateImpl implements _DrawerState {
  const _$DrawerStateImpl(
      {this.theStates = TheStates.initial,
      final List<ConversationResponse>? conversationHistory,
      this.error = const InternalAppError()})
      : _conversationHistory = conversationHistory;

  @override
  @JsonKey()
  final TheStates theStates;
  final List<ConversationResponse>? _conversationHistory;
  @override
  List<ConversationResponse>? get conversationHistory {
    final value = _conversationHistory;
    if (value == null) return null;
    if (_conversationHistory is EqualUnmodifiableListView)
      return _conversationHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final AppError error;

  @override
  String toString() {
    return 'DrawerState(theStates: $theStates, conversationHistory: $conversationHistory, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerStateImpl &&
            (identical(other.theStates, theStates) ||
                other.theStates == theStates) &&
            const DeepCollectionEquality()
                .equals(other._conversationHistory, _conversationHistory) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theStates,
      const DeepCollectionEquality().hash(_conversationHistory), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      __$$DrawerStateImplCopyWithImpl<_$DrawerStateImpl>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState(
      {final TheStates theStates,
      final List<ConversationResponse>? conversationHistory,
      final AppError error}) = _$DrawerStateImpl;

  @override
  TheStates get theStates;
  @override
  List<ConversationResponse>? get conversationHistory;
  @override
  AppError get error;
  @override
  @JsonKey(ignore: true)
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
