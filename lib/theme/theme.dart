import 'package:flutter/material.dart';

class AppTheme {
  static getTheme() {
    return ThemeData(
      //scaffoldBackgroundColor: const Color(0xffFFF9f0), //jicama
      fontFamily: 'Poppins',

      primaryColor: const Color(0xffE09132),

      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xffE09132), selectionColor: Color(0xffE09132)),
      colorScheme: ColorScheme.fromSeed(
        primary: const Color(0xffE09132),
        secondary: const Color(0xffFFEFCD),
        seedColor: const Color(0xffE09132),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xffFFEFCD),
      ),
      appBarTheme: AppBarTheme(
        color: const Color(0xffE09132).withOpacity(0.1),
      ),
      useMaterial3: true,
    );
  }
}
