import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final themeLight = ThemeData(
  textTheme: GoogleFonts.rubikTextTheme(
    const TextTheme(
      headline1: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Color(0xFF070417),
      ),
      subtitle1: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  cardTheme: const CardTheme(
    color: Colors.white,
  ),
  primaryColor: Colors.purple,
);
