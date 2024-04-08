import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/{{name}}_repository.dart';
import '../source/{{name}}_remote_source.dart';

@Injectable(as: {{name.pascalCase()}}Repository)
class {{name.pascalCase()}}RepositoryImpl extends {{name.pascalCase()}}Repository {
  {{name.pascalCase()}}RepositoryImpl(this._remoteSource);
  final {{name.pascalCase()}}RemoteSource _remoteSource;
  @override
  Future<Either<AppError, ApiResponse<dynamic>>> {{name}}() async {
    try {
      final result = await _remoteSource.{{name}}();
      return right(result);
    }  catch (e) {
      if(e is AppError){

      return left(e);
      }else{
        return left(const InternalAppError());
      }
    }
  }
}
