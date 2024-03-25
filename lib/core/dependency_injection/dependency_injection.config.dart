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
    as _i18;
import '../../features/drawer/data/source/drawer_remote_source.dart' as _i16;
import '../../features/drawer/domain/repository/drawer_repository.dart' as _i17;
import '../../features/drawer/domain/usecase/drawer_usecase.dart' as _i19;
import '../../features/drawer/presentation/bloc/drawer_bloc.dart' as _i4;
import '../../features/homescreen/data/repository/home_repository_impl.dart'
    as _i22;
import '../../features/homescreen/data/source/home_remote_source.dart' as _i20;
import '../../features/homescreen/domain/repository/home_repository.dart'
    as _i21;
import '../../features/homescreen/domain/usecase/home_usecase.dart' as _i23;
import '../../features/homescreen/presentation/bloc/home_bloc.dart' as _i28;
import '../../features/login/data/repository/login_repository_impl.dart'
    as _i26;
import '../../features/login/data/source/auth_remote_source.dart' as _i24;
import '../../features/login/domain/repository/login_repository.dart' as _i25;
import '../../features/login/domain/usecase/login_usecase.dart' as _i27;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i29;
import '../../features/signup/data/repository/signup_repository_impl.dart'
    as _i12;
import '../../features/signup/data/source/signup_remote_source.dart' as _i10;
import '../../features/signup/domain/repository/signup_repository.dart' as _i11;
import '../../features/signup/domain/usecase/signup_usecase.dart' as _i13;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i14;
import '../config/environment_helper.dart' as _i5;
import '../dio_provider/dio_api_client.dart' as _i15;
import '../gemini/app_gemini.dart' as _i7;
import '../preferences/preferences.dart' as _i8;
import 'dependency_injection.dart' as _i30;

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
    gh.factory<_i10.SignUpRemoteSource>(
        () => _i10.SignUpRemoteSource(gh<_i8.Preferences>()));
    gh.factory<_i11.SignUpRepository>(
        () => _i12.SignUpRepositoryImpl(gh<_i10.SignUpRemoteSource>()));
    gh.factory<_i13.SignUpUsecase>(
        () => _i13.SignUpUsecase(gh<_i11.SignUpRepository>()));
    gh.factory<_i14.SignupBloc>(
        () => _i14.SignupBloc(gh<_i13.SignUpUsecase>()));
    gh.factory<_i15.DioApiClient>(() => _i15.DioApiClient(
          gh<_i3.Dio>(),
          gh<_i5.EnvironmentHelper>(),
          gh<_i8.Preferences>(),
          gh<_i3.Dio>(),
        ));
    gh.factory<_i16.DrawerRemoteSource>(() => _i16.DrawerRemoteSource(
          gh<_i15.DioApiClient>(),
          gh<_i8.Preferences>(),
        ));
    gh.factory<_i17.DrawerRepository>(
        () => _i18.DrawerRepositoryImpl(gh<_i16.DrawerRemoteSource>()));
    gh.factory<_i19.DrawerUsecase>(
        () => _i19.DrawerUsecase(gh<_i17.DrawerRepository>()));
    gh.factory<_i20.HomeRemoteSource>(
        () => _i20.HomeRemoteSource(gh<_i15.DioApiClient>()));
    gh.factory<_i21.HomeRepository>(
        () => _i22.HomeRepositoryImpl(gh<_i20.HomeRemoteSource>()));
    gh.factory<_i23.HomeUsecase>(
        () => _i23.HomeUsecase(gh<_i21.HomeRepository>()));
    gh.factory<_i24.LoginRemoteSource>(
        () => _i24.LoginRemoteSource(gh<_i8.Preferences>()));
    gh.factory<_i25.LoginRepository>(
        () => _i26.LoginRepositoryImpl(gh<_i24.LoginRemoteSource>()));
    gh.factory<_i27.LoginUsecase>(
        () => _i27.LoginUsecase(gh<_i25.LoginRepository>()));
    gh.lazySingleton<_i28.HomeBloc>(
        () => _i28.HomeBloc(gh<_i23.HomeUsecase>()));
    gh.lazySingleton<_i29.LoginBloc>(
        () => _i29.LoginBloc(gh<_i27.LoginUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i30.RegisterModule {}
