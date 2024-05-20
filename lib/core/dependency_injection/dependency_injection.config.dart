// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../features/change_password/data/repository/change_password_repository_impl.dart'
    as _i18;
import '../../features/change_password/data/source/change_pasword_remote_source.dart'
    as _i9;
import '../../features/change_password/domain/repository/change_password_repository.dart'
    as _i17;
import '../../features/change_password/domain/usecase/send_otp_usecase.dart'
    as _i23;
import '../../features/change_password/presentation/bloc/change_password_bloc.dart'
    as _i28;
import '../../features/drawer/data/repository/drawer_repository_impl.dart'
    as _i30;
import '../../features/drawer/data/source/drawer_remote_source.dart' as _i26;
import '../../features/drawer/domain/repository/drawer_repository.dart' as _i29;
import '../../features/drawer/domain/usecase/drawer_usecase.dart' as _i31;
import '../../features/drawer/presentation/bloc/drawer_bloc.dart' as _i6;
import '../../features/homescreen/data/repository/home_repository_impl.dart'
    as _i33;
import '../../features/homescreen/data/source/home_remote_source.dart' as _i27;
import '../../features/homescreen/domain/repository/home_repository.dart'
    as _i32;
import '../../features/homescreen/domain/usecase/home_usecase.dart' as _i34;
import '../../features/homescreen/presentation/bloc/home_bloc.dart' as _i35;
import '../../features/login/data/repository/login_repository_impl.dart'
    as _i14;
import '../../features/login/data/source/auth_remote_source.dart' as _i8;
import '../../features/login/domain/repository/login_repository.dart' as _i13;
import '../../features/login/domain/usecase/login_usecase.dart' as _i15;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i22;
import '../../features/signup/data/repository/signup_repository_impl.dart'
    as _i20;
import '../../features/signup/data/source/signup_remote_source.dart' as _i7;
import '../../features/signup/domain/repository/signup_repository.dart' as _i19;
import '../../features/signup/domain/usecase/signup_usecase.dart' as _i24;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i25;
import '../config/environment_helper.dart' as _i4;
import '../dio_provider/dio_api_client.dart' as _i21;
import '../gemini/app_gemini.dart' as _i3;
import '../preferences/preferences.dart' as _i16;
import 'dependency_injection.dart' as _i36;

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
    gh.factory<_i9.ChangePaswordRemoteSource>(
        () => _i9.ChangePaswordRemoteSource());
    gh.singleton<_i10.Dio>(() => registerModule.dio);
    gh.singleton<_i11.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.singleton<_i12.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i13.LoginRepository>(
        () => _i14.LoginRepositoryImpl(gh<_i8.LoginRemoteSource>()));
    gh.factory<_i15.LoginUsecase>(
        () => _i15.LoginUsecase(gh<_i13.LoginRepository>()));
    gh.factory<_i16.Preferences>(
        () => _i16.Preferences(gh<_i12.FlutterSecureStorage>()));
    gh.factory<_i17.ChangePasswordRepository>(() =>
        _i18.ChangePasswordRepositoryImpl(gh<_i9.ChangePaswordRemoteSource>()));
    gh.factory<_i19.SignUpRepository>(
        () => _i20.SignUpRepositoryImpl(gh<_i7.SignUpRemoteSource>()));
    gh.factory<_i21.DioApiClient>(() => _i21.DioApiClient(
          gh<_i10.Dio>(),
          gh<_i4.EnvironmentHelper>(),
          gh<_i16.Preferences>(),
          gh<_i10.Dio>(),
        ));
    gh.lazySingleton<_i22.LoginBloc>(() => _i22.LoginBloc(
          gh<_i15.LoginUsecase>(),
          gh<_i11.GoogleSignIn>(),
        ));
    gh.factory<_i23.SendOtpUsecase>(
        () => _i23.SendOtpUsecase(gh<_i17.ChangePasswordRepository>()));
    gh.factory<_i24.SignUpUsecase>(
        () => _i24.SignUpUsecase(gh<_i19.SignUpRepository>()));
    gh.factory<_i25.SignupBloc>(
        () => _i25.SignupBloc(gh<_i24.SignUpUsecase>()));
    gh.factory<_i26.DrawerRemoteSource>(() => _i26.DrawerRemoteSource(
          gh<_i21.DioApiClient>(),
          gh<_i16.Preferences>(),
        ));
    gh.factory<_i27.HomeRemoteSource>(
        () => _i27.HomeRemoteSource(gh<_i21.DioApiClient>()));
    gh.lazySingleton<_i28.ChangePasswordBloc>(
        () => _i28.ChangePasswordBloc(gh<_i23.SendOtpUsecase>()));
    gh.factory<_i29.DrawerRepository>(
        () => _i30.DrawerRepositoryImpl(gh<_i26.DrawerRemoteSource>()));
    gh.factory<_i31.DrawerUsecase>(
        () => _i31.DrawerUsecase(gh<_i29.DrawerRepository>()));
    gh.factory<_i32.HomeRepository>(
        () => _i33.HomeRepositoryImpl(gh<_i27.HomeRemoteSource>()));
    gh.factory<_i34.HomeUsecase>(
        () => _i34.HomeUsecase(gh<_i32.HomeRepository>()));
    gh.lazySingleton<_i35.HomeBloc>(
        () => _i35.HomeBloc(gh<_i34.HomeUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i36.RegisterModule {}
