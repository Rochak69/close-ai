// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../features/drawer/data/repository/drawer_repository_impl.dart'
    as _i25;
import '../../features/drawer/data/source/drawer_remote_source.dart' as _i22;
import '../../features/drawer/domain/repository/drawer_repository.dart' as _i24;
import '../../features/drawer/domain/usecase/drawer_usecase.dart' as _i26;
import '../../features/drawer/presentation/bloc/drawer_bloc.dart' as _i6;
import '../../features/homescreen/data/repository/home_repository_impl.dart'
    as _i28;
import '../../features/homescreen/data/source/home_remote_source.dart' as _i23;
import '../../features/homescreen/domain/repository/home_repository.dart'
    as _i27;
import '../../features/homescreen/domain/usecase/home_usecase.dart' as _i29;
import '../../features/homescreen/presentation/bloc/home_bloc.dart' as _i30;
import '../../features/login/data/repository/login_repository_impl.dart'
    as _i13;
import '../../features/login/data/source/auth_remote_source.dart' as _i8;
import '../../features/login/domain/repository/login_repository.dart' as _i12;
import '../../features/login/domain/usecase/login_usecase.dart' as _i14;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i19;
import '../../features/signup/data/repository/signup_repository_impl.dart'
    as _i17;
import '../../features/signup/data/source/signup_remote_source.dart' as _i7;
import '../../features/signup/domain/repository/signup_repository.dart' as _i16;
import '../../features/signup/domain/usecase/signup_usecase.dart' as _i20;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i21;
import '../config/environment_helper.dart' as _i4;
import '../dio_provider/dio_api_client.dart' as _i18;
import '../gemini/app_gemini.dart' as _i3;
import '../preferences/preferences.dart' as _i15;
import 'dependency_injection.dart' as _i31;

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
    gh.factory<_i3.GeminiClient>(() => _i3.GeminiClient());
    gh.factory<_i4.EnvironmentHelper>(() => _i4.EnvironmentHelper());
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i6.DrawerBloc>(() => _i6.DrawerBloc());
    gh.factory<_i7.SignUpRemoteSource>(() => _i7.SignUpRemoteSource());
    gh.factory<_i8.LoginRemoteSource>(() => _i8.LoginRemoteSource());
    gh.singleton<_i9.Dio>(() => registerModule.dio);
    gh.singleton<_i10.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.singleton<_i11.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i12.LoginRepository>(
        () => _i13.LoginRepositoryImpl(gh<_i8.LoginRemoteSource>()));
    gh.factory<_i14.LoginUsecase>(
        () => _i14.LoginUsecase(gh<_i12.LoginRepository>()));
    gh.factory<_i15.Preferences>(
        () => _i15.Preferences(gh<_i11.FlutterSecureStorage>()));
    gh.factory<_i16.SignUpRepository>(
        () => _i17.SignUpRepositoryImpl(gh<_i7.SignUpRemoteSource>()));
    gh.factory<_i18.DioApiClient>(() => _i18.DioApiClient(
          gh<_i9.Dio>(),
          gh<_i4.EnvironmentHelper>(),
          gh<_i15.Preferences>(),
          gh<_i9.Dio>(),
        ));
    gh.lazySingleton<_i19.LoginBloc>(() => _i19.LoginBloc(
          gh<_i14.LoginUsecase>(),
          gh<_i10.GoogleSignIn>(),
        ));
    gh.factory<_i20.SignUpUsecase>(
        () => _i20.SignUpUsecase(gh<_i16.SignUpRepository>()));
    gh.factory<_i21.SignupBloc>(
        () => _i21.SignupBloc(gh<_i20.SignUpUsecase>()));
    gh.factory<_i22.DrawerRemoteSource>(() => _i22.DrawerRemoteSource(
          gh<_i18.DioApiClient>(),
          gh<_i15.Preferences>(),
        ));
    gh.factory<_i23.HomeRemoteSource>(
        () => _i23.HomeRemoteSource(gh<_i18.DioApiClient>()));
    gh.factory<_i24.DrawerRepository>(
        () => _i25.DrawerRepositoryImpl(gh<_i22.DrawerRemoteSource>()));
    gh.factory<_i26.DrawerUsecase>(
        () => _i26.DrawerUsecase(gh<_i24.DrawerRepository>()));
    gh.factory<_i27.HomeRepository>(
        () => _i28.HomeRepositoryImpl(gh<_i23.HomeRemoteSource>()));
    gh.factory<_i29.HomeUsecase>(
        () => _i29.HomeUsecase(gh<_i27.HomeRepository>()));
    gh.lazySingleton<_i30.HomeBloc>(
        () => _i30.HomeBloc(gh<_i29.HomeUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i31.RegisterModule {}
