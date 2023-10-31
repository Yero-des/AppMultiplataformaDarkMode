import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;
  static const Color secondary = Colors.blue;
  static const Color light = Colors.white;
  static const Color dark = Colors.black87;

  static final ThemeData yerodevLight = ThemeData.light().copyWith(
    scaffoldBackgroundColor: light,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    cardTheme: const CardTheme(
      elevation: 12,
      shadowColor: primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)) // Ajusta el valor según tu preferencia
      ),
    ),
    iconTheme: const IconThemeData(color: primary)
  );

  static final ThemeData yerodevDark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: dark,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    cardTheme: const CardTheme(
      elevation: 12,
      shadowColor: primary,  
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)) // Ajusta el valor según tu preferencia
      ), 
    ),
    iconTheme: const IconThemeData(color: primary)
  );  
}