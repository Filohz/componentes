import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.lightGreen;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //primary color
    primaryColor: primary,
    //AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0.0,
    ),
    //Icon
    primaryIconTheme: const IconThemeData(color: primary),
    //TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
    //Floating Action Button
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),
    //ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
}
