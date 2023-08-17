import 'package:flutter/material.dart';

//Archivo de temas de la app
class AppTheme {
  static const Color lightPrimaryColor = Colors.grey;
  static const Color darkPrimaryColor = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: lightPrimaryColor,
    appBarTheme: const AppBarTheme(color: lightPrimaryColor, elevation: 0.5),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: darkPrimaryColor,
  );
}
