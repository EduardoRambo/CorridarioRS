import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryTextTheme: TextTheme(
        headline6: TextStyle(fontFamily: 'Calibri', fontSize: 26),
      ),
      canvasColor: Colors.white,
      textTheme: TextTheme(
        button: TextStyle(fontFamily: 'Calibri', fontSize: 20),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontFamily: 'Calibri'),
        color: Color.fromRGBO(249, 187, 62, 1),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.values[1],
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Color.fromRGBO(249, 187, 62, 1)),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(41),
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(41),
          borderSide: BorderSide(width: 1.9, color: Colors.white),
        ),
        hintStyle:
            TextStyle(fontFamily: 'Calibri', color: Colors.black, fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(41),
          borderSide: BorderSide(width: 1.3, color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(41),
        ),
      ),
    );
  }
}
