import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color.fromARGB(255, 67, 88, 134),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDAE1FF),
  onPrimaryContainer: Color(0xFF001849),
  secondary: Color.fromARGB(255, 137, 0, 211),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFF5D9FF),
  onSecondaryContainer: Color(0xFF30004A),
  tertiary: Color.fromARGB(255, 94, 208, 223),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color.fromARGB(255, 204, 234, 236),
  onTertiaryContainer: Color.fromARGB(255, 176, 239, 243),
  error: Color(0xFFBA1A1A),
  errorContainer: Color.fromARGB(255, 224, 248, 255),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF8FDFF),
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFE1E2EC),
  onSurfaceVariant: Color(0xFF45464F),
  outline: Color(0xFF757680),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFFB3C5FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF2A58BF),
  outlineVariant: Color(0xFFC5C6D0),
  scrim: Color(0xFF000000),
);

final ThemeData mindWellTheme = ThemeData(
  colorScheme: lightColorScheme,

  //AppBarTheme
  appBarTheme: AppBarTheme(
    backgroundColor: lightColorScheme.primary,
    foregroundColor: lightColorScheme.onPrimary,
  ),

  //ElevatedButtonThemeData
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(lightColorScheme.primary),
          foregroundColor:
              MaterialStateProperty.all(lightColorScheme.onPrimary),
          overlayColor:
              MaterialStatePropertyAll(lightColorScheme.onPrimaryContainer),
          elevation: MaterialStateProperty.all(5),
          textStyle: MaterialStateProperty.all(
            TextStyle(color: lightColorScheme.onPrimary),
          ))),

  //TabBarTheme
  tabBarTheme: TabBarTheme(
    labelColor: lightColorScheme.onPrimary,
    unselectedLabelColor: lightColorScheme.onPrimary,
    indicator: BoxDecoration(
      color: lightColorScheme.primary,
    ),
  ),
);
