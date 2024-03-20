import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/usecase/usecase.dart';
import 'package:close_ai/features/drawer/domain/repository/drawer_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

class DrawerParam {
  DrawerParam(
    this.id,
  );
  final String id;
}

@injectable
class DrawerUsecase extends UseCase<ApiResponseForList<Content>, DrawerParam> {
  DrawerUsecase(this._drawerRepository);
  final DrawerRepository _drawerRepository;

  @override
  Future<Either<AppError, ApiResponseForList<Content>>> call(
          DrawerParam param,) =>
      _drawerRepository.getChatHistory(id: param.id);
}
