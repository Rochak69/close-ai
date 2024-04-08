part of '{{name}}_bloc.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.initial() = _Initial;
  const factory {{name.pascalCase()}}State.loading() = _Loading;
  const factory {{name.pascalCase()}}State.error({required String errorMessage}) = _Error;
  const factory {{name.pascalCase()}}State.success() = _Success;
}
