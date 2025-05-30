import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage {
  factory SharedPreferencesStorage() {
    return _singleton;
  }

  SharedPreferencesStorage._internal();

  static final SharedPreferencesStorage _singleton =
      SharedPreferencesStorage._internal();

  static late SharedPreferences sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> clearAll() async {
    await sharedPreferences.clear();
  }

  static Future<void> setLicenseSelected({required String value}) async {
    await sharedPreferences.setString(
      'license_selected',
      value,
    );
  }

  static String getLicenseSelected() {
    return sharedPreferences.getString(
          'license_selected',
        ) ??
        'A1';
  }

  static Future<void> setIsDataInserted({required bool value}) async {
    await sharedPreferences.setBool(
      'data_inserted',
      value,
    );
  }

  static bool getIsDataInserted() {
    return sharedPreferences.getBool('data_inserted') ?? false;
  }
}
