import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static SharedPreferencesUtils? _instance;
  static SharedPreferences? _prefs;

  // Private constructor
  SharedPreferencesUtils._();

  // Singleton instance
  static Future<SharedPreferencesUtils> getInstance() async {
    _instance ??= SharedPreferencesUtils._();
    _prefs ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  Future<void> saveString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  String? getString(String key) {
    return _prefs?.getString(key);
  }
}