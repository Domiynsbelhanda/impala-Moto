import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    // Define the default brightness and colors.
    primaryColor: AppColors.primaryColor,
    hintColor: Colors.cyan[600],
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.black),
      headline6: TextStyle(color: Colors.black),
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
  );
}
