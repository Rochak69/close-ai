// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

class Preference {
  static const String isFirstRun = 'isFirstRun';

  static const String isLoggedIn = 'isLoggedIn';

  static const String number = 'USERS_FIRST_NAME';

  static const String accessToken = 'ACCESS_TOKEN';
  static const String deviceToken = 'DEVICE_TOKEN';
  static const String oldAccessToken = 'OLD_ACCESS_TOKEN';

  static const String refreshToken = 'REFRESH_TOKEN';

  static const String userID = 'USER_ID';
  static const String userEmail = 'USER_EMAIL';

  static const String userData = 'user';
  static const String userModel = 'USER_MODEL';
  static const String biometricLogin = 'BIOMETRIC_LOGIN';
  static const String activelySearching = 'ACTIVELY_SEARCHING';
  static const String recommendedJobs = 'RECOMMENDED_JOBS';
  static const String urgentEmployment = 'URGENT_EMPLOYMENT';
  static const String ethicalJobs = 'ETHICAL_JOBS';
  static const String popularManpower = 'POPULAR_MANPOWER';
  static const String allJobs = 'ALL_JOBS';
  static const String jobsCategories = 'JOBS_CATEGORIES';
  static const String offlineData = 'OFFLINE_DATA';
}

@injectable
class Preferences {
  final FlutterSecureStorage _secureStorage;
  const Preferences(
    this._secureStorage,
  );

  Future<void> saveString(String name, String value) async {
    await _secureStorage.write(key: name.toLowerCase(), value: value);
  }

  Future<void> saveModel(String name, Object value) async {
    await _secureStorage.write(
      key: name.toLowerCase(),
      value: value.toString(),
    );
  }

  Future<void> userData(String name, String value) async {
    await _secureStorage.write(key: name.toLowerCase(), value: value);
  }

  Future<void> saveBool(String name, {required bool value}) async {
    await _secureStorage.write(
      key: name.toLowerCase(),
      value: value.toString(),
    );
  }

  Future<void> saveLOGOUT() async {
    await _secureStorage.deleteAll();
  }

  Future<String?> getString(String name) async {
    final value = await _secureStorage.read(key: name.toLowerCase());
    return value;
  }

  Future<bool> getBool(String name) async {
    final value = await _secureStorage.read(key: name.toLowerCase());
    return value == 'true';
  }

  //Returns true null
  Future<bool> getBoolTrueIfNull(String name) async {
    final value = await _secureStorage.read(key: name.toLowerCase());
    return !(value == 'false');
  }

  Future<int> getInt(String name) async {
    final value = await _secureStorage.read(key: name.toLowerCase());
    final intValue = value ?? '0';
    return int.parse(intValue);
  }

  Future<void> saveInt(String name, int value) async {
    await _secureStorage.write(
      key: name.toLowerCase(),
      value: value.toString(),
    );
  }

  Future<void> remove(String name) async {
    await _secureStorage.delete(key: name.toLowerCase());
  }

  Future<void> removeAll() async {
    await _secureStorage.deleteAll();
  }
}
