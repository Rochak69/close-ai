import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'dart:async';
import '../../domain/usecase/{{name}}_usecase.dart';
part '{{name}}_event.dart';
part '{{name}}_state.dart';
part '{{name}}_bloc.freezed.dart';
@lazySingleton
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc(this._{{name}}Usecase) : super(const _Initial()) {
    on<_Started>(_{{name}});
  }
  final {{name.pascalCase()}}Usecase _{{name}}Usecase;

  FutureOr<void> _{{name}}(_Started event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(const {{name.pascalCase()}}State.loading());

    final result =
        await _{{name}}Usecase.call({{name.pascalCase()}}Param());
    result.fold((l) {
      emit({{name.pascalCase()}}State.error(errorMessage: l.message));
    }, (r) {
    
        emit(const {{name.pascalCase()}}State.success());
      
    });
  }
}
