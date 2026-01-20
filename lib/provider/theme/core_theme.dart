import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: const Color(0xff6EF3A5),
  brightness: Brightness.light,
  primaryColor: const Color(0xff6EF3A5),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(
        secondary: Colors.black,
        brightness: Brightness.light,
      )
      .copyWith(background: Colors.white),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xff6EF3A5),
  primaryColor: const Color(0xff6EF3A5),
  highlightColor: const Color(0xff6EF3A5),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
    displayLarge: TextStyle(color: Colors.white),
    displayMedium: TextStyle(color: Colors.white),
    displaySmall: TextStyle(color: Colors.white),
    headlineLarge: TextStyle(color: Colors.white),
    headlineMedium: TextStyle(color: Colors.white),
    headlineSmall: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
    titleSmall: TextStyle(color: Colors.white),
    labelLarge: TextStyle(color: Colors.white),
    labelMedium: TextStyle(color: Colors.white),
    labelSmall: TextStyle(color: Colors.white),
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
      .copyWith(
        secondary: const Color(0xff6EF3A5),
        brightness: Brightness.dark,
        background: Colors.black,
        surface: Colors.black,
        onBackground: Colors.white,
        onSurface: Colors.white,
      ),
);
