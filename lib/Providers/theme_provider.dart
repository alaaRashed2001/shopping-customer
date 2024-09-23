import 'package:flutter/material.dart';
import 'package:online_store_customers/Shared_Preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool _darkTheme = false;

  bool get getDarkTheme => _darkTheme;

  ThemeProvider() {
    getTheme();
  }

  setDarkTheme({required bool themeValue}) {
    SharedPreferencesController().setTheme(themeValue);
    _darkTheme = themeValue;
    notifyListeners();
  }

  bool getTheme() {
    // WRONG CODE

    // Here you read the value from shared preference and didn't assign it
    // to any variable or even used it so u baisicaly did nothing
    // SharedPreferencesController().getTheme();

    // this what caused the error that we saw, the getters must only return
    // values not changing the state what happened is when we called that function
    // app was trying to update it self while it was not full started..
    // notifyListeners();

    // related to first line.., why the hell u returned _darkTheme instead of
    // the value from the shared preference ?!
    // return _darkTheme;

    return SharedPreferencesController().getTheme();
  }
}
