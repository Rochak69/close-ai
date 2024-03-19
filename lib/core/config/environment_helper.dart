import 'package:close_ai/core/build_variants/app_entry_point.dart';
import 'package:injectable/injectable.dart';

enum EnvironmentKey {
  baseUrl,
  env,
}

@injectable
class EnvironmentHelper {
  String? getValue(EnvironmentKey key) {
    switch (key) {
      case EnvironmentKey.baseUrl:
        return AppEntryPoint.envSettings!.baseUrl;
      case EnvironmentKey.env:
        return AppEntryPoint.envSettings?.appEnvironment.name;
    }
  }
}
