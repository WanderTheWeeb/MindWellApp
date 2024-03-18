import 'package:flutter/material.dart';

// Define the default ColorScheme
const mindWellColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF0061A2),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFD1E4FF),
  onPrimaryContainer: Color(0xFF001D35),
  secondary: Color(0xFF006A61),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color.fromARGB(255, 54, 175, 255),
  onSecondaryContainer: Color(0xFF00201D),
  tertiary: Color(0xFF865300),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDDB8),
  onTertiaryContainer: Color(0xFF2B1700),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFDFCFF),
  onBackground: Color(0xFF1A1C1E),
  surface: Color(0xFFFDFCFF),
  onSurface: Color(0xFF1A1C1E),
  surfaceVariant: Color(0xFFDFE2EB),
  onSurfaceVariant: Color(0xFF42474E),
  outline: Color(0xFF73777F),
  onInverseSurface: Color(0xFFF1F0F4),
  inverseSurface: Color(0xFF2F3033),
  inversePrimary: Color(0xFF9DCAFF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF0061A2),
  outlineVariant: Color(0xFFC3C7CF),
  scrim: Color(0xFF000000),
);

// Define the default TextTheme
const mindWelltextTheme = TextTheme(
  //Display text is reserved for short, important text or numerals.
  //They work best on large screens.
  displayLarge: TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  ),
  displaySmall: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  ),

  //Headline are best-suited for short, high-emphasis text on smaller screens
  //Headline text provided that appropriate line height and letter spacing is also integrated to maintain readability.
  headlineLarge: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  ),
  headlineSmall: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
  ),

  //Title are smaller than headline styles, and should be used for medium-emphasis text that remains relatively short.
  //Consider using title styles to divide secondary passages of text or secondary regions of content.
  titleLarge: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
  ),

  //Body styles are used for longer passages of text in your app.
  //Use typefaces intended for body styles, which are readable at smaller sizes and can be comfortably read in longer passages.

  //For larger type legibility using styles like title, headline, and display, we recommend a line height ratio of 1.2 times the type size
  bodyLarge: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
  ),
  bodyMedium: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  ),

  //Label styles are smaller, utilitarian styles,
  //used for things like the text inside components or for very small text in the content body, such as captions.
  labelLarge: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  ),
  labelMedium: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
  ),
  labelSmall: TextStyle(
    fontSize: 8.0,
    fontWeight: FontWeight.bold,
  ),
);

ThemeData mindWellTheme = ThemeData(
    // Define the default Brightness and Colors
    colorScheme: mindWellColorScheme,
    textTheme: mindWelltextTheme,
    fontFamily: 'League Spartan',

    // Define the AppBarTheme
    appBarTheme: AppBarTheme(
      color: mindWellColorScheme.primary,
      foregroundColor: mindWellColorScheme.onPrimary,
      titleTextStyle: mindWelltextTheme.titleLarge,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(10),
      )),
    ),

    //Define Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          mindWellColorScheme.primary,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          mindWellColorScheme.onPrimary,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(2),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
      ),
    ));
