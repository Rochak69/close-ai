import 'dart:async';
import 'dart:io';

import 'package:close_ai/core/bloc/app_bloc_observer.dart';
import 'package:close_ai/core/config/app_config.dart';
import 'package:close_ai/core/dependency_injection/dependency_injection.dart';
import 'package:close_ai/core/firestore/app_firestore.dart';

import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/core/theme/app_theme.dart';
import 'package:close_ai/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:close_ai/features/login/presentation/bloc/login_bloc.dart';
import 'package:close_ai/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:close_ai/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:uuid/uuid.dart';

Uuid uuid = const Uuid();

class AppEntryPoint {
  AppEntryPoint(AppConfiguration buildVariant) {
    envSettings = buildVariant;
    initializeStartUpDependenciesAndRun(envSettings);
  }
  static AppConfiguration? envSettings;

  static Future<void> initializeStartUpDependenciesAndRun(
    AppConfiguration? envSettings,
  ) async {
    WidgetsFlutterBinding.ensureInitialized();
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      AppFirestore.init();
    } catch (e) {
      debugPrint(e.toString());
    }
    await configureDependencies();

    if (Platform.isAndroid) {
      unawaited(_setHighRefreshRate());
    }
    Bloc.observer = const AppBlocObserver();

    unawaited(
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]),
    );

    runApp(const MyApp());
  }

  static Future<void> _setHighRefreshRate() async {
    try {
      await FlutterDisplayMode.setHighRefreshRate();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (BuildContext context) => sl<LoginBloc>(),
          ),
          BlocProvider<HomeBloc>(
            create: (BuildContext context) => sl<HomeBloc>(),
          ),
          BlocProvider<DrawerBloc>(
            create: (BuildContext context) => sl<DrawerBloc>(),
          ),
          BlocProvider<SignupBloc>(
            create: (BuildContext context) => sl<SignupBloc>(),
          ),
        ],
        child: MaterialApp.router(
          theme: appTheme(),
          routerConfig: AppRouter.instance.config(),
          debugShowCheckedModeBanner: false,
        ),
      ),
      // ),
    );
  }
}
