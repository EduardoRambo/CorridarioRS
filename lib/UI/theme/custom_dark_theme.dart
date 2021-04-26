import 'package:flutter/material.dart';

class CustomDarkTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.grey[800],
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.purple),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white,
          ),
          padding: MaterialStateProperty.resolveWith(
            (states) => EdgeInsets.only(left: 55, right: 55),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.purple,
            width: 1.3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.purple,
            width: 1.3,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.purple,
            width: 1.3,
          ),
        ),
      ),
    );
  }
}
