import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF005CBB),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFD7E2FF),
  onPrimaryContainer: Color(0xFF001B3F),
  secondary: Color(0xFF005DB8),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFD6E3FF),
  onSecondaryContainer: Color(0xFF001B3E),
  tertiary: Color(0xFF0055D5),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFDAE1FF),
  onTertiaryContainer: Color(0xFF001849),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFDFBFF),
  onBackground: Color(0xFF1A1B1F),
  surface: Color(0xFFFDFBFF),
  onSurface: Color(0xFF1A1B1F),
  surfaceVariant: Color(0xFFE0E2EC),
  onSurfaceVariant: Color(0xFF44474E),
  outline: Color(0xFF74777F),
  onInverseSurface: Color(0xFFF2F0F4),
  inverseSurface: Color(0xFF2F3033),
  inversePrimary: Color(0xFFABC7FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF005CBB),
  outlineVariant: Color(0xFFC4C6D0),
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
