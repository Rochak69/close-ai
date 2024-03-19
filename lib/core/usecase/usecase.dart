import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  Future<Either<AppError, Type>> call(Param param);
}

abstract class SynchronousUseCase<Type, Param> {
  Either<AppError, Type> call(Param param);
}

class NoParam {}
