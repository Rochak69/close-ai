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
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../features/drawer/data/repository/drawer_repository_impl.dart'
    as _i23;
import '../../features/drawer/data/source/drawer_remote_source.dart' as _i21;
import '../../features/drawer/domain/repository/drawer_repository.dart' as _i22;
import '../../features/drawer/domain/usecase/drawer_usecase.dart' as _i24;
import '../../features/drawer/presentation/bloc/drawer_bloc.dart' as _i4;
import '../../features/homescreen/data/repository/home_repository_impl.dart'
    as _i27;
import '../../features/homescreen/data/source/home_remote_source.dart' as _i25;
import '../../features/homescreen/domain/repository/home_repository.dart'
    as _i26;
import '../../features/homescreen/domain/usecase/home_usecase.dart' as _i28;
import '../../features/homescreen/presentation/bloc/home_bloc.dart' as _i30;
import '../../features/login/data/repository/login_repository_impl.dart'
    as _i11;
import '../../features/login/data/source/auth_remote_source.dart' as _i9;
import '../../features/login/domain/repository/login_repository.dart' as _i10;
import '../../features/login/domain/usecase/login_usecase.dart' as _i12;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i29;
import '../../features/signup/data/repository/signup_repository_impl.dart'
    as _i17;
import '../../features/signup/data/source/signup_remote_source.dart' as _i15;
import '../../features/signup/domain/repository/signup_repository.dart' as _i16;
import '../../features/signup/domain/usecase/signup_usecase.dart' as _i18;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i19;
import '../config/environment_helper.dart' as _i5;
import '../dio_provider/dio_api_client.dart' as _i20;
import '../gemini/app_gemini.dart' as _i7;
import '../preferences/preferences.dart' as _i13;
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
    gh.singleton<_i3.Dio>(() => registerModule.dio);
    gh.factory<_i4.DrawerBloc>(() => _i4.DrawerBloc());
    gh.factory<_i5.EnvironmentHelper>(() => _i5.EnvironmentHelper());
    gh.singleton<_i6.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i7.GeminiClient>(() => _i7.GeminiClient());
    gh.singleton<_i8.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.factory<_i9.LoginRemoteSource>(() => _i9.LoginRemoteSource());
    gh.factory<_i10.LoginRepository>(
        () => _i11.LoginRepositoryImpl(gh<_i9.LoginRemoteSource>()));
    gh.factory<_i12.LoginUsecase>(
        () => _i12.LoginUsecase(gh<_i10.LoginRepository>()));
    gh.factory<_i13.Preferences>(
        () => _i13.Preferences(gh<_i6.FlutterSecureStorage>()));
    await gh.factoryAsync<_i14.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i15.SignUpRemoteSource>(() => _i15.SignUpRemoteSource());
    gh.factory<_i16.SignUpRepository>(
        () => _i17.SignUpRepositoryImpl(gh<_i15.SignUpRemoteSource>()));
    gh.factory<_i18.SignUpUsecase>(
        () => _i18.SignUpUsecase(gh<_i16.SignUpRepository>()));
    gh.factory<_i19.SignupBloc>(
        () => _i19.SignupBloc(gh<_i18.SignUpUsecase>()));
    gh.factory<_i20.DioApiClient>(() => _i20.DioApiClient(
          gh<_i3.Dio>(),
          gh<_i5.EnvironmentHelper>(),
          gh<_i13.Preferences>(),
          gh<_i3.Dio>(),
        ));
    gh.factory<_i21.DrawerRemoteSource>(() => _i21.DrawerRemoteSource(
          gh<_i20.DioApiClient>(),
          gh<_i13.Preferences>(),
        ));
    gh.factory<_i22.DrawerRepository>(
        () => _i23.DrawerRepositoryImpl(gh<_i21.DrawerRemoteSource>()));
    gh.factory<_i24.DrawerUsecase>(
        () => _i24.DrawerUsecase(gh<_i22.DrawerRepository>()));
    gh.factory<_i25.HomeRemoteSource>(
        () => _i25.HomeRemoteSource(gh<_i20.DioApiClient>()));
    gh.factory<_i26.HomeRepository>(
        () => _i27.HomeRepositoryImpl(gh<_i25.HomeRemoteSource>()));
    gh.factory<_i28.HomeUsecase>(
        () => _i28.HomeUsecase(gh<_i26.HomeRepository>()));
    gh.lazySingleton<_i29.LoginBloc>(() => _i29.LoginBloc(
          gh<_i12.LoginUsecase>(),
          gh<_i8.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i30.HomeBloc>(
        () => _i30.HomeBloc(gh<_i28.HomeUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i31.RegisterModule {}
