import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      bodySmall: TextStyle(fontSize: 14, color: Colors.black54),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
      bodySmall: TextStyle(fontSize: 14, color: Colors.white70),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
