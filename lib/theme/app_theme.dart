import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      //primary color
      primaryColor: Colors.amber,
      // ignore: prefer_const_constructors

      //Appbar Theme
      appBarTheme:
          const AppBarTheme(color: primary, centerTitle: true, elevation: 0),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),

      //FloatingAction Button Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      //elevated action button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 0)));
}
