import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
        primaryColor: _themeblue,
        accentColor: _accentColor,
        fontFamily: 'poppins');
  }

  static ThemeData dark() {
    return ThemeData(
        primaryColor: Colors.black,
        disabledColor: Colors.grey,
        brightness: Brightness.dark,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Color(0xff0A0C18),
        textTheme: TextTheme(),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          primary: Colors.grey,
          backgroundColor: Color(0xff161823),
          side: BorderSide(color: Colors.grey, width: 1),
        )),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
        ),
        fontFamily: 'poppins');
  }

  static const _themeblue = Color(0xff006BFF);
  static const _accentColor = Color(0xff3e64ff);
}
