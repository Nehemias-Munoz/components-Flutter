import 'package:flutter/material.dart';

//Archivo de temas de la app
class AppTheme {
  static const Color lightPrimaryColor = Colors.grey;
  static const Color darkPrimaryColor = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: lightPrimaryColor,
    appBarTheme: const AppBarTheme(color: lightPrimaryColor, elevation: 0.5),

    //Textbutton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.indigo),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: darkPrimaryColor,
  );
}
