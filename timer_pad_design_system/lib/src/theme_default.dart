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
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  ),
  cardTheme: const CardTheme(
    color: Colors.white,
  ),
  primaryColor: Colors.purple,
);
