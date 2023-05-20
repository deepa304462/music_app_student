import 'package:flutter/material.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light(useMaterial3: true);
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColor.appThemeColor,
    ),
    scaffoldBackgroundColor: AppColor.appThemeColor,
  );
}
