import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/core/dio_provider/api_response.dart';
import 'package:close_ai/core/usecase/usecase.dart';
import 'package:close_ai/features/homescreen/data/model/home_response.dart';
import 'package:close_ai/features/homescreen/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

class HomeParam {
  HomeParam(this.prompt);
  final String prompt;
}

@injectable
class HomeUsecase extends UseCase<ApiResponse<HomeResponse>, HomeParam> {
  HomeUsecase(this._homeRepository);
  final HomeRepository _homeRepository;

  @override
  Future<Either<AppError, ApiResponse<HomeResponse>>> call(HomeParam param) =>
      _homeRepository.fetchData(prompt: param.prompt);
}
