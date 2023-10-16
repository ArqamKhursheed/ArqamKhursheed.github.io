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
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
      .copyWith(
        secondary: const Color(0xff6EF3A5),
        brightness: Brightness.dark,
      )
      .copyWith(background: Colors.grey.shade900),
);
