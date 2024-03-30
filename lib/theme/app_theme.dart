import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.lightGreen;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0.0,
    ),
    primaryIconTheme: const IconThemeData(color: primary),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
  );
}
