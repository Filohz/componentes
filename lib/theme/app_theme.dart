import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.lightGreen;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,

    //appBar theme
    appBarTheme: const AppBarTheme(backgroundColor: primary, elevation: 0.0),

    //icon Theme
    primaryIconTheme: const IconThemeData(color: primary),

    //textButton Theme
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)),

    //floatingActionButton theme
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),

    //elevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: primary, shape: const StadiumBorder(), elevation: 0),
    ),

    //inputDecoration theme
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: primary,
      suffixIconColor: primary,
      floatingLabelStyle: const TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
