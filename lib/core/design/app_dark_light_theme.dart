import 'package:flutter/material.dart';

class AppTheme {
  // Neutral Colors
  static const Color neutral900 = Color(0xFF1D1B20);
  static const Color neutral800 = Color(0xFF292639);
  static const Color neutral700 = Color(0xFF3F3D56);
  static const Color neutral600 = Color(0xFF565470);
  static const Color neutral500 = Color(0xFF6E6D85);
  static const Color neutral400 = Color(0xFF8D8BA7);
  static const Color neutral300 = Color(0xFFABAAC1);
  static const Color neutral200 = Color(0xFFC8C7D8);
  static const Color neutral100 = Color(0xFFE5E5EF);

  // Primary Colors
  static const Color primary900 = Color(0xFF0C0B6B);
  static const Color primary800 = Color(0xFF11108F);
  static const Color primary700 = Color(0xFF1615B3);
  static const Color primary600 = Color(0xFF1B1AD7);
  static const Color primary500 = Color(0xFF2320FB);
  static const Color primary400 = Color(0xFF4E4CFC);
  static const Color primary300 = Color(0xFF7A78FD);
  static const Color primary200 = Color(0xFFA5A4FE);
  static const Color primary100 = Color(0xFFD0CFFE);

  // Success Colors
  static const Color success900 = Color(0xFF0A2F0C);
  static const Color success800 = Color(0xFF0E4711);
  static const Color success700 = Color(0xFF135E16);
  static const Color success600 = Color(0xFF17761B);
  static const Color success500 = Color(0xFF1B8D20);
  static const Color success400 = Color(0xFF47A44B);
  static const Color success300 = Color(0xFF74BA77);
  static const Color success200 = Color(0xFFA0D1A3);
  static const Color success100 = Color(0xFFCDE8CE);

  // Information Colors
  static const Color info900 = Color(0xFF0C2A4D);
  static const Color info800 = Color(0xFF103966);
  static const Color info700 = Color(0xFF14487F);
  static const Color info600 = Color(0xFF185798);
  static const Color info500 = Color(0xFF1C66B1);
  static const Color info400 = Color(0xFF4985C0);
  static const Color info300 = Color(0xFF75A3CF);
  static const Color info200 = Color(0xFFA2C2DF);
  static const Color info100 = Color(0xFFCEE0EF);

  // Warning Colors
  static const Color warning900 = Color(0xFF4D3705);
  static const Color warning800 = Color(0xFF664A07);
  static const Color warning700 = Color(0xFF7F5C09);
  static const Color warning600 = Color(0xFF986F0B);
  static const Color warning500 = Color(0xFFB1810D);
  static const Color warning400 = Color(0xFFC09A3D);
  static const Color warning300 = Color(0xFFCFB36E);
  static const Color warning200 = Color(0xFFDFCD9E);
  static const Color warning100 = Color(0xFFEFE6CF);

  // Danger Colors
  static const Color danger900 = Color(0xFF4B0E0E);
  static const Color danger800 = Color(0xFF651313);
  static const Color danger700 = Color(0xFF7E1818);
  static const Color danger600 = Color(0xFF971D1D);
  static const Color danger500 = Color(0xFFB02222);
  static const Color danger400 = Color(0xFFC04E4E);
  static const Color danger300 = Color(0xFFCF7A7A);
  static const Color danger200 = Color(0xFFDFA5A5);
  static const Color danger100 = Color(0xFFEFD0D0);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primary600,
    scaffoldBackgroundColor: neutral100,
    colorScheme: const ColorScheme.light(
      primary: primary600,
      secondary: primary400,
      surface: neutral100,
      error: danger500,
      onPrimary: neutral100,
      onSecondary: neutral900,
      onSurface: neutral900,
      onError: neutral100,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primary600,
      foregroundColor: neutral100,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: neutral900),
      bodyMedium: TextStyle(color: neutral800),
    ),
    iconTheme: const IconThemeData(color: primary600),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primary400,
    scaffoldBackgroundColor: neutral900,
    colorScheme: const ColorScheme.dark(
      primary: primary400,
      secondary: primary600,
      surface: neutral800,
      error: danger400,
      onPrimary: neutral100,
      onSecondary: neutral100,
      onSurface: neutral100,
      onError: neutral900,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: neutral800,
      foregroundColor: neutral100,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: neutral100),
      bodyMedium: TextStyle(color: neutral200),
    ),
    iconTheme: const IconThemeData(color: primary400),
  );
}

/*
color: Theme.of(context).colorScheme.primary,
style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
 */