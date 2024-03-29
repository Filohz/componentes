import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.green.shade300;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
        elevation: 0.0,
      ),
      primaryIconTheme: IconThemeData(color: primary));
}
