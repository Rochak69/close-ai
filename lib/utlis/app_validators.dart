import 'package:close_ai/extensions/string_extension.dart';

class AppValidators {
  static String? required(String? value) {
    if (value.isNullOrEmpty()) {
      return 'This Field is required';
    }
    return null;
  }
}
