import 'package:flutter/material.dart';

//Archivo de temas de la app
class AppTheme {
  static const Color lightPrimaryColor = Colors.indigo;
  static const Color darkPrimaryColor = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: lightPrimaryColor,
    appBarTheme: const AppBarTheme(color: lightPrimaryColor, elevation: 0.5),

    //Textbutton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.indigo),
    ),
    //Floating action button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: lightPrimaryColor,
      elevation: 0.5,
    ),
    //Elevate button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        shape: StadiumBorder(),
      ),
    ),
    //Input decoration theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: lightPrimaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightPrimaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5.0),
          bottomLeft: Radius.circular(5.0),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.purple),
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: darkPrimaryColor,
  );
}
