import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFADD8E6), // Light Blue
      secondary: Color(0xFF98FB98), // Mint Green
      background: Colors.white,
    ),
    brightness: Brightness.light,
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFADD8E6), // Light Blue
      secondary: Color(0xFF98FB98), // Mint Green
      background: Color(0xFF121212),
    ),
    brightness: Brightness.dark,
  );
}
