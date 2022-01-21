import 'package:flutter/material.dart';

class AppTheme {
  static const Color primario = Colors.blue;
  static ThemeData temaLight = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(
      color: primario,
      elevation: 0,
    ),
  );
}
