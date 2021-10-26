import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:flutter/material.dart';

final themeDark = ThemeData(
  textTheme: GoogleFonts.rubikTextTheme(
    const TextTheme(
      headline1: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  ),
  cardTheme: const CardTheme(
    color: Color(0xFF292639),
  ),
  primaryColor: Colors.deepPurple,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF070417),
  scaffoldBackgroundColor: const Color(0xFF070417),
);
