// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../../features/drawer/data/repository/drawer_repository_impl.dart'
    as _i13;
import '../../features/drawer/data/source/drawer_remote_source.dart' as _i11;
import '../../features/drawer/domain/repository/drawer_repository.dart' as _i12;
import '../../features/drawer/domain/usecase/drawer_usecase.dart' as _i14;
import '../../features/drawer/presentation/bloc/drawer_bloc.dart' as _i4;
import '../../features/homescreen/data/repository/home_repository_impl.dart'
    as _i17;
import '../../features/homescreen/data/source/home_remote_source.dart' as _i15;
import '../../features/homescreen/domain/repository/home_repository.dart'
    as _i16;
import '../../features/homescreen/domain/usecase/home_usecase.dart' as _i18;
import '../../features/homescreen/presentation/bloc/home_bloc.dart' as _i23;
import '../../features/login/data/repository/login_repository_impl.dart'
    as _i21;
import '../../features/login/data/source/auth_remote_source.dart' as _i19;
import '../../features/login/domain/repository/login_repository.dart' as _i20;
import '../../features/login/domain/usecase/login_usecase.dart' as _i22;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i24;
import '../config/environment_helper.dart' as _i5;
import '../dio_provider/dio_api_client.dart' as _i10;
import '../gemini/app_gemini.dart' as _i7;
import '../preferences/preferences.dart' as _i8;
import 'dependency_injection.dart' as _i25;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(() => registerModule.dio);
    gh.factory<_i4.DrawerBloc>(() => _i4.DrawerBloc());
    gh.factory<_i5.EnvironmentHelper>(() => _i5.EnvironmentHelper());
    gh.singleton<_i6.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i7.GeminiClient>(() => _i7.GeminiClient());
    gh.factory<_i8.Preferences>(
        () => _i8.Preferences(gh<_i6.FlutterSecureStorage>()));
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i10.DioApiClient>(() => _i10.DioApiClient(
          gh<_i3.Dio>(),
          gh<_i5.EnvironmentHelper>(),
          gh<_i8.Preferences>(),
          gh<_i3.Dio>(),
        ));
    gh.factory<_i11.DrawerRemoteSource>(() => _i11.DrawerRemoteSource(
          gh<_i10.DioApiClient>(),
          gh<_i8.Preferences>(),
        ));
    gh.factory<_i12.DrawerRepository>(
        () => _i13.DrawerRepositoryImpl(gh<_i11.DrawerRemoteSource>()));
    gh.factory<_i14.DrawerUsecase>(
        () => _i14.DrawerUsecase(gh<_i12.DrawerRepository>()));
    gh.factory<_i15.HomeRemoteSource>(
        () => _i15.HomeRemoteSource(gh<_i10.DioApiClient>()));
    gh.factory<_i16.HomeRepository>(
        () => _i17.HomeRepositoryImpl(gh<_i15.HomeRemoteSource>()));
    gh.factory<_i18.HomeUsecase>(
        () => _i18.HomeUsecase(gh<_i16.HomeRepository>()));
    gh.factory<_i19.LoginRemoteSource>(() => _i19.LoginRemoteSource(
          gh<_i10.DioApiClient>(),
          gh<_i8.Preferences>(),
        ));
    gh.factory<_i20.LoginRepository>(
        () => _i21.LoginRepositoryImpl(gh<_i19.LoginRemoteSource>()));
    gh.factory<_i22.LoginUsecase>(
        () => _i22.LoginUsecase(gh<_i20.LoginRepository>()));
    gh.lazySingleton<_i23.HomeBloc>(
        () => _i23.HomeBloc(gh<_i18.HomeUsecase>()));
    gh.lazySingleton<_i24.LoginBloc>(
        () => _i24.LoginBloc(gh<_i22.LoginUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i25.RegisterModule {}
