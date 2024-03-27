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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenerateFromImageImplCopyWith<$Res> {
  factory _$$GenerateFromImageImplCopyWith(_$GenerateFromImageImpl value,
          $Res Function(_$GenerateFromImageImpl) then) =
      __$$GenerateFromImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String prompt, List<XFile> files});
}

/// @nodoc
class __$$GenerateFromImageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GenerateFromImageImpl>
    implements _$$GenerateFromImageImplCopyWith<$Res> {
  __$$GenerateFromImageImplCopyWithImpl(_$GenerateFromImageImpl _value,
      $Res Function(_$GenerateFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? prompt = null,
    Object? files = null,
  }) {
    return _then(_$GenerateFromImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$GenerateFromImageImpl implements _GenerateFromImage {
  const _$GenerateFromImageImpl(
      {required this.id,
      required this.prompt,
      required final List<XFile> files})
      : _files = files;

  @override
  final String id;
  @override
  final String prompt;
  final List<XFile> _files;
  @override
  List<XFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'HomeEvent.generateFromImage(id: $id, prompt: $prompt, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateFromImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, prompt, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateFromImageImplCopyWith<_$GenerateFromImageImpl> get copyWith =>
      __$$GenerateFromImageImplCopyWithImpl<_$GenerateFromImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return generateFromImage(id, prompt, files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return generateFromImage?.call(id, prompt, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (generateFromImage != null) {
      return generateFromImage(id, prompt, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return generateFromImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return generateFromImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (generateFromImage != null) {
      return generateFromImage(this);
    }
    return orElse();
  }
}

abstract class _GenerateFromImage implements HomeEvent {
  const factory _GenerateFromImage(
      {required final String id,
      required final String prompt,
      required final List<XFile> files}) = _$GenerateFromImageImpl;

  String get id;
  String get prompt;
  List<XFile> get files;
  @JsonKey(ignore: true)
  _$$GenerateFromImageImplCopyWith<_$GenerateFromImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartChatImplCopyWith<$Res> {
  factory _$$StartChatImplCopyWith(
          _$StartChatImpl value, $Res Function(_$StartChatImpl) then) =
      __$$StartChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String prompt, bool stopResponse});
}

/// @nodoc
class __$$StartChatImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartChatImpl>
    implements _$$StartChatImplCopyWith<$Res> {
  __$$StartChatImplCopyWithImpl(
      _$StartChatImpl _value, $Res Function(_$StartChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? prompt = null,
    Object? stopResponse = null,
  }) {
    return _then(_$StartChatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      stopResponse: null == stopResponse
          ? _value.stopResponse
          : stopResponse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartChatImpl implements _StartChat {
  const _$StartChatImpl(
      {required this.id, required this.prompt, this.stopResponse = false});

  @override
  final String id;
  @override
  final String prompt;
  @override
  @JsonKey()
  final bool stopResponse;

  @override
  String toString() {
    return 'HomeEvent.startChat(id: $id, prompt: $prompt, stopResponse: $stopResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartChatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.stopResponse, stopResponse) ||
                other.stopResponse == stopResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, prompt, stopResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartChatImplCopyWith<_$StartChatImpl> get copyWith =>
      __$$StartChatImplCopyWithImpl<_$StartChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return startChat(id, prompt, stopResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return startChat?.call(id, prompt, stopResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (startChat != null) {
      return startChat(id, prompt, stopResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return startChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return startChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (startChat != null) {
      return startChat(this);
    }
    return orElse();
  }
}

abstract class _StartChat implements HomeEvent {
  const factory _StartChat(
      {required final String id,
      required final String prompt,
      final bool stopResponse}) = _$StartChatImpl;

  String get id;
  String get prompt;
  bool get stopResponse;
  @JsonKey(ignore: true)
  _$$StartChatImplCopyWith<_$StartChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateFromTextImplCopyWith<$Res> {
  factory _$$GenerateFromTextImplCopyWith(_$GenerateFromTextImpl value,
          $Res Function(_$GenerateFromTextImpl) then) =
      __$$GenerateFromTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prompt});
}

/// @nodoc
class __$$GenerateFromTextImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GenerateFromTextImpl>
    implements _$$GenerateFromTextImplCopyWith<$Res> {
  __$$GenerateFromTextImplCopyWithImpl(_$GenerateFromTextImpl _value,
      $Res Function(_$GenerateFromTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
  }) {
    return _then(_$GenerateFromTextImpl(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateFromTextImpl implements _GenerateFromText {
  const _$GenerateFromTextImpl({required this.prompt});

  @override
  final String prompt;

  @override
  String toString() {
    return 'HomeEvent.generateFromText(prompt: $prompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateFromTextImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateFromTextImplCopyWith<_$GenerateFromTextImpl> get copyWith =>
      __$$GenerateFromTextImplCopyWithImpl<_$GenerateFromTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return generateFromText(prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return generateFromText?.call(prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (generateFromText != null) {
      return generateFromText(prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return generateFromText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return generateFromText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (generateFromText != null) {
      return generateFromText(this);
    }
    return orElse();
  }
}

abstract class _GenerateFromText implements HomeEvent {
  const factory _GenerateFromText({required final String prompt}) =
      _$GenerateFromTextImpl;

  String get prompt;
  @JsonKey(ignore: true)
  _$$GenerateFromTextImplCopyWith<_$GenerateFromTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectChatImplCopyWith<$Res> {
  factory _$$SelectChatImplCopyWith(
          _$SelectChatImpl value, $Res Function(_$SelectChatImpl) then) =
      __$$SelectChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String title, GeminiModelEnum geminiModelEnum});
}

/// @nodoc
class __$$SelectChatImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SelectChatImpl>
    implements _$$SelectChatImplCopyWith<$Res> {
  __$$SelectChatImplCopyWithImpl(
      _$SelectChatImpl _value, $Res Function(_$SelectChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? geminiModelEnum = null,
  }) {
    return _then(_$SelectChatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      geminiModelEnum: null == geminiModelEnum
          ? _value.geminiModelEnum
          : geminiModelEnum // ignore: cast_nullable_to_non_nullable
              as GeminiModelEnum,
    ));
  }
}

/// @nodoc

class _$SelectChatImpl implements _SelectChat {
  const _$SelectChatImpl(
      {required this.id, required this.title, required this.geminiModelEnum});

  @override
  final String id;
  @override
  final String title;
  @override
  final GeminiModelEnum geminiModelEnum;

  @override
  String toString() {
    return 'HomeEvent.selectChat(id: $id, title: $title, geminiModelEnum: $geminiModelEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectChatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.geminiModelEnum, geminiModelEnum) ||
                other.geminiModelEnum == geminiModelEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, geminiModelEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      __$$SelectChatImplCopyWithImpl<_$SelectChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return selectChat(id, title, geminiModelEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return selectChat?.call(id, title, geminiModelEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(id, title, geminiModelEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return selectChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return selectChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(this);
    }
    return orElse();
  }
}

abstract class _SelectChat implements HomeEvent {
  const factory _SelectChat(
      {required final String id,
      required final String title,
      required final GeminiModelEnum geminiModelEnum}) = _$SelectChatImpl;

  String get id;
  String get title;
  GeminiModelEnum get geminiModelEnum;
  @JsonKey(ignore: true)
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchModelImplCopyWith<$Res> {
  factory _$$SwitchModelImplCopyWith(
          _$SwitchModelImpl value, $Res Function(_$SwitchModelImpl) then) =
      __$$SwitchModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeminiModelEnum modelEnum});
}

/// @nodoc
class __$$SwitchModelImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SwitchModelImpl>
    implements _$$SwitchModelImplCopyWith<$Res> {
  __$$SwitchModelImplCopyWithImpl(
      _$SwitchModelImpl _value, $Res Function(_$SwitchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelEnum = null,
  }) {
    return _then(_$SwitchModelImpl(
      modelEnum: null == modelEnum
          ? _value.modelEnum
          : modelEnum // ignore: cast_nullable_to_non_nullable
              as GeminiModelEnum,
    ));
  }
}

/// @nodoc

class _$SwitchModelImpl implements _SwitchModel {
  const _$SwitchModelImpl({required this.modelEnum});

  @override
  final GeminiModelEnum modelEnum;

  @override
  String toString() {
    return 'HomeEvent.switchModel(modelEnum: $modelEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchModelImpl &&
            (identical(other.modelEnum, modelEnum) ||
                other.modelEnum == modelEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modelEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchModelImplCopyWith<_$SwitchModelImpl> get copyWith =>
      __$$SwitchModelImplCopyWithImpl<_$SwitchModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return switchModel(modelEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return switchModel?.call(modelEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (switchModel != null) {
      return switchModel(modelEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return switchModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return switchModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (switchModel != null) {
      return switchModel(this);
    }
    return orElse();
  }
}

abstract class _SwitchModel implements HomeEvent {
  const factory _SwitchModel({required final GeminiModelEnum modelEnum}) =
      _$SwitchModelImpl;

  GeminiModelEnum get modelEnum;
  @JsonKey(ignore: true)
  _$$SwitchModelImplCopyWith<_$SwitchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpeakImplCopyWith<$Res> {
  factory _$$SpeakImplCopyWith(
          _$SpeakImpl value, $Res Function(_$SpeakImpl) then) =
      __$$SpeakImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SpeakImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SpeakImpl>
    implements _$$SpeakImplCopyWith<$Res> {
  __$$SpeakImplCopyWithImpl(
      _$SpeakImpl _value, $Res Function(_$SpeakImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SpeakImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpeakImpl implements _Speak {
  const _$SpeakImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'HomeEvent.speak(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakImplCopyWith<_$SpeakImpl> get copyWith =>
      __$$SpeakImplCopyWithImpl<_$SpeakImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return speak(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return speak?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return speak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return speak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(this);
    }
    return orElse();
  }
}

abstract class _Speak implements HomeEvent {
  const factory _Speak({required final String text}) = _$SpeakImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$SpeakImplCopyWith<_$SpeakImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
          _$PauseImpl value, $Res Function(_$PauseImpl) then) =
      __$$PauseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
      _$PauseImpl _value, $Res Function(_$PauseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$PauseImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PauseImpl implements _Pause {
  const _$PauseImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'HomeEvent.pause(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseImplCopyWith<_$PauseImpl> get copyWith =>
      __$$PauseImplCopyWithImpl<_$PauseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return pause(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return pause?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements HomeEvent {
  const factory _Pause({required final String text}) = _$PauseImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$PauseImplCopyWith<_$PauseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpResponse userDetails});

  $SignUpResponseCopyWith<$Res> get userDetails;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
  }) {
    return _then(_$InitImpl(
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as SignUpResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpResponseCopyWith<$Res> get userDetails {
    return $SignUpResponseCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value));
    });
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl({required this.userDetails});

  @override
  final SignUpResponse userDetails;

  @override
  String toString() {
    return 'HomeEvent.init(userDetails: $userDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String prompt, List<XFile> files)
        generateFromImage,
    required TResult Function(String id, String prompt, bool stopResponse)
        startChat,
    required TResult Function(String prompt) generateFromText,
    required TResult Function(
            String id, String title, GeminiModelEnum geminiModelEnum)
        selectChat,
    required TResult Function(GeminiModelEnum modelEnum) switchModel,
    required TResult Function(String text) speak,
    required TResult Function(String text) pause,
    required TResult Function(SignUpResponse userDetails) init,
  }) {
    return init(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult? Function(String id, String prompt, bool stopResponse)? startChat,
    TResult? Function(String prompt)? generateFromText,
    TResult? Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult? Function(GeminiModelEnum modelEnum)? switchModel,
    TResult? Function(String text)? speak,
    TResult? Function(String text)? pause,
    TResult? Function(SignUpResponse userDetails)? init,
  }) {
    return init?.call(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String prompt, List<XFile> files)?
        generateFromImage,
    TResult Function(String id, String prompt, bool stopResponse)? startChat,
    TResult Function(String prompt)? generateFromText,
    TResult Function(String id, String title, GeminiModelEnum geminiModelEnum)?
        selectChat,
    TResult Function(GeminiModelEnum modelEnum)? switchModel,
    TResult Function(String text)? speak,
    TResult Function(String text)? pause,
    TResult Function(SignUpResponse userDetails)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(userDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateFromImage value) generateFromImage,
    required TResult Function(_StartChat value) startChat,
    required TResult Function(_GenerateFromText value) generateFromText,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_SwitchModel value) switchModel,
    required TResult Function(_Speak value) speak,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateFromImage value)? generateFromImage,
    TResult? Function(_StartChat value)? startChat,
    TResult? Function(_GenerateFromText value)? generateFromText,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_SwitchModel value)? switchModel,
    TResult? Function(_Speak value)? speak,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateFromImage value)? generateFromImage,
    TResult Function(_StartChat value)? startChat,
    TResult Function(_GenerateFromText value)? generateFromText,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_SwitchModel value)? switchModel,
    TResult Function(_Speak value)? speak,
    TResult Function(_Pause value)? pause,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements HomeEvent {
  const factory _Init({required final SignUpResponse userDetails}) = _$InitImpl;

  SignUpResponse get userDetails;
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  TheStates get theStates => throw _privateConstructorUsedError;
  List<ContentResponse>? get chathistory => throw _privateConstructorUsedError;
  String? get selectedCoversationId => throw _privateConstructorUsedError;
  SignUpResponse? get signUpResponse => throw _privateConstructorUsedError;
  GeminiModelEnum get currentModel => throw _privateConstructorUsedError;
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
      List<ContentResponse>? chathistory,
      String? selectedCoversationId,
      SignUpResponse? signUpResponse,
      GeminiModelEnum currentModel,
      AppError error});

  $SignUpResponseCopyWith<$Res>? get signUpResponse;
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
    Object? chathistory = freezed,
    Object? selectedCoversationId = freezed,
    Object? signUpResponse = freezed,
    Object? currentModel = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      chathistory: freezed == chathistory
          ? _value.chathistory
          : chathistory // ignore: cast_nullable_to_non_nullable
              as List<ContentResponse>?,
      selectedCoversationId: freezed == selectedCoversationId
          ? _value.selectedCoversationId
          : selectedCoversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as SignUpResponse?,
      currentModel: null == currentModel
          ? _value.currentModel
          : currentModel // ignore: cast_nullable_to_non_nullable
              as GeminiModelEnum,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpResponseCopyWith<$Res>? get signUpResponse {
    if (_value.signUpResponse == null) {
      return null;
    }

    return $SignUpResponseCopyWith<$Res>(_value.signUpResponse!, (value) {
      return _then(_value.copyWith(signUpResponse: value) as $Val);
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
      List<ContentResponse>? chathistory,
      String? selectedCoversationId,
      SignUpResponse? signUpResponse,
      GeminiModelEnum currentModel,
      AppError error});

  @override
  $SignUpResponseCopyWith<$Res>? get signUpResponse;
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
    Object? chathistory = freezed,
    Object? selectedCoversationId = freezed,
    Object? signUpResponse = freezed,
    Object? currentModel = null,
    Object? error = null,
  }) {
    return _then(_$HomeStateImpl(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      chathistory: freezed == chathistory
          ? _value._chathistory
          : chathistory // ignore: cast_nullable_to_non_nullable
              as List<ContentResponse>?,
      selectedCoversationId: freezed == selectedCoversationId
          ? _value.selectedCoversationId
          : selectedCoversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as SignUpResponse?,
      currentModel: null == currentModel
          ? _value.currentModel
          : currentModel // ignore: cast_nullable_to_non_nullable
              as GeminiModelEnum,
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
      final List<ContentResponse>? chathistory,
      this.selectedCoversationId,
      this.signUpResponse,
      this.currentModel = GeminiModelEnum.text,
      this.error = const InternalAppError()})
      : _chathistory = chathistory;

  @override
  @JsonKey()
  final TheStates theStates;
  final List<ContentResponse>? _chathistory;
  @override
  List<ContentResponse>? get chathistory {
    final value = _chathistory;
    if (value == null) return null;
    if (_chathistory is EqualUnmodifiableListView) return _chathistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? selectedCoversationId;
  @override
  final SignUpResponse? signUpResponse;
  @override
  @JsonKey()
  final GeminiModelEnum currentModel;
  @override
  @JsonKey()
  final AppError error;

  @override
  String toString() {
    return 'HomeState(theStates: $theStates, chathistory: $chathistory, selectedCoversationId: $selectedCoversationId, signUpResponse: $signUpResponse, currentModel: $currentModel, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.theStates, theStates) ||
                other.theStates == theStates) &&
            const DeepCollectionEquality()
                .equals(other._chathistory, _chathistory) &&
            (identical(other.selectedCoversationId, selectedCoversationId) ||
                other.selectedCoversationId == selectedCoversationId) &&
            (identical(other.signUpResponse, signUpResponse) ||
                other.signUpResponse == signUpResponse) &&
            (identical(other.currentModel, currentModel) ||
                other.currentModel == currentModel) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      theStates,
      const DeepCollectionEquality().hash(_chathistory),
      selectedCoversationId,
      signUpResponse,
      currentModel,
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
      final List<ContentResponse>? chathistory,
      final String? selectedCoversationId,
      final SignUpResponse? signUpResponse,
      final GeminiModelEnum currentModel,
      final AppError error}) = _$HomeStateImpl;

  @override
  TheStates get theStates;
  @override
  List<ContentResponse>? get chathistory;
  @override
  String? get selectedCoversationId;
  @override
  SignUpResponse? get signUpResponse;
  @override
  GeminiModelEnum get currentModel;
  @override
  AppError get error;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
