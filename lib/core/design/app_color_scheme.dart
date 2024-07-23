import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Color(0xFF1E88E5),
    //Primary Color
    secondary: Color(0xFF3949AB),
    //Secondary Color
    tertiary: Color(0xFFE91E63),
    // Accent Color
    surface: Color(0xFFe0e0e0),
    // Card Background Color
    onPrimary: Color(0xFF212121),
    // Primary Text Color
    onSecondary: Color(0xFF757575),
    // Secondary Text Color
    onSurface: Color(0xFFBDBDBD),
    // Hint Text Color
    outline: Color(0xFFE0E0E0),
    // Border Color
    error: Color(0xFFD32F2F),
    // Error Color
  ),
);

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Color(0xFF90CAF9),
      //Primary Color
      secondary: Color(0xFF7986CB),
      //Secondary Color
      tertiary: Color(0xFFF48FB1),
      // Accent Color
      surface: Color(0xFF121212),
      // Card Background Color
      onPrimary: Color(0xFFFFFFFF),
      // Primary Text Color
      onSecondary: Color(0xFFB0BEC5),
      // Secondary Text Color
      onSurface: Color(0xFF757575),
      // Hint Text Color
      outline: Color(0xFF2C2C2C),
      // Border Color
      error: Color(0xFFEF9A9A),
      // Error Color
    ),);

/*
Color primaryColor = Theme.of(context).colorScheme.primary;
Color accentColor = Theme.of(context).colorScheme.tertiary;
 */