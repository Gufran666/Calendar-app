import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.deepPurple,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
    ),
  );
}