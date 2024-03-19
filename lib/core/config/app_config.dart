import 'package:close_ai/core/build_variants/enum.dart';

class AppConfiguration {
  const AppConfiguration({
    required this.baseUrl,
    required this.appEnvironment,
  });
  final String baseUrl;

  final AppEnvironment appEnvironment;

  static const development = AppConfiguration(
    baseUrl: '',
    appEnvironment: AppEnvironment.development,
  );

  static const production = AppConfiguration(
    baseUrl: '',
    appEnvironment: AppEnvironment.production,
  );
  static const staging = AppConfiguration(
    baseUrl: '',
    appEnvironment: AppEnvironment.staging,
  );
}
