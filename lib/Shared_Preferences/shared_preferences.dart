import 'package:shared_preferences/shared_preferences.dart';

enum SpKeys { theme }

class SharedPreferencesController {
  static final SharedPreferencesController _sharedPrefControllerObj =
      SharedPreferencesController._sharedPrefPrivateConstructor();

  SharedPreferencesController._sharedPrefPrivateConstructor();

  late  SharedPreferences _sharedPrefLibObj;

  factory SharedPreferencesController() {
    return _sharedPrefControllerObj;
  }

  Future<void> initSharedPreferences() async {
    _sharedPrefLibObj = await SharedPreferences.getInstance();
  }

  /// Theme
  Future<void> setTheme(bool theme) async {
    await _sharedPrefLibObj.setBool(SpKeys.theme.name, theme);
  }

  bool getTheme() {
    return _sharedPrefLibObj.getBool(SpKeys.theme.name) ?? false;
  }
}
