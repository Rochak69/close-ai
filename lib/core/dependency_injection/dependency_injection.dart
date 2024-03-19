import 'package:close_ai/core/dependency_injection/dependency_injection.config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async => sl.init();

@module
abstract class RegisterModule {
  // url here will be injected
  @singleton
  Dio get dio => Dio();

  // same thing works for instances that's gotten asynchronous.
  // all you need to do is wrap your instance with a future and tell injectable how
  // to initialize it
  @preResolve // if you need to pre resolve the value
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  @singleton // if you need to pre resolve the value
  FlutterSecureStorage get secureStore => const FlutterSecureStorage();
  // Also, make sure you await for your configure function before running the App.
}
