import 'package:flutter/material.dart';
import 'package:online_store_customers/Consts/app_color.dart';

class Styles {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? AppColor.darkScaffoldColor
          : AppColor.lightScaffoldColor,
      cardColor: isDarkTheme
          ? const Color.fromARGB(255, 13, 6, 37)
          : AppColor.lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );
  }
}
