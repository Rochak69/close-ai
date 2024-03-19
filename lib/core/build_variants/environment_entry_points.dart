import 'package:close_ai/core/build_variants/app_entry_point.dart';
import 'package:close_ai/core/config/app_config.dart';

class DevelopmentEntryPoint extends AppEntryPoint {
  DevelopmentEntryPoint() : super(AppConfiguration.development);
}

class ProductionEntryPoint extends AppEntryPoint {
  ProductionEntryPoint() : super(AppConfiguration.production);
}

class StagingEntryPoint extends AppEntryPoint {
  StagingEntryPoint() : super(AppConfiguration.staging);
}
