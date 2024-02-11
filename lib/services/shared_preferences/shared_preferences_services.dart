import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesServices {
  SharedPreferences? _sharedPreferences;
  bool sharedPreferenceInitialized = false;

  _initSharedPreferences() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
  }

  Future<String?> getString({required String key}) async {
    await _initSharedPreferences();
    return _sharedPreferences?.getString(key);
  }

  setString({required String key, required String value}) async {
    await _initSharedPreferences();
    _sharedPreferences?.setString(key, value);
  }

  Future<bool?> delete({required String key}) async {
    await _initSharedPreferences();
    return await _sharedPreferences?.remove(key);
  }
}
