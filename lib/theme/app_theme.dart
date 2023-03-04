import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      //primary color
      primaryColor: Colors.amber,
      // ignore: prefer_const_constructors
      appBarTheme:
          const AppBarTheme(color: primary, centerTitle: true, elevation: 0));
}
