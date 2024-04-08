import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repository/{{name}}_repository.dart';
class {{name.pascalCase()}}Param {
  {{name.pascalCase()}}Param();
}

@injectable
class {{name.pascalCase()}}Usecase extends UseCase<ApiResponse<dynamic>, {{name.pascalCase()}}Param> {
  {{name.pascalCase()}}Usecase(this._repository);
  final {{name.pascalCase()}}Repository _repository;

  @override
  Future<Either<AppError, ApiResponse<dynamic>>> call(
          {{name.pascalCase()}}Param param,) =>
      _repository.{{name}}();
}
