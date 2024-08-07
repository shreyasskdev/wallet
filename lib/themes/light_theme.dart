import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// const textColor = Color(0xFF1d1618);
// const backgroundColor = Color(0xFFf8f6f6);
// const primaryColor = Color(0xFF4f363b);
// const primaryFgColor = Color(0xFFf8f6f6);
// const secondaryColor = Color(0xFFbb959c);
// const secondaryFgColor = Color(0xFF1d1618);
// const accentColor = Color(0xFF8f5661);
// const accentFgColor = Color(0xFFf8f6f6);

const textColor = Colors.black;
const backgroundColor = Colors.white;
const primaryColor = Colors.black;
const primaryFgColor = Colors.white;
const secondaryColor = Colors.black;
const secondaryFgColor = Colors.white;
const accentColor = Colors.black;
const accentFgColor = Colors.white;

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.light == Brightness.light
      ? Color(0xffB3261E)
      : Color(0xffF2B8B5),
  onError: Brightness.light == Brightness.light
      ? Color(0xffFFFFFF)
      : Color(0xff601410),
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: ColorScheme.fromSeed(
    seedColor: colorScheme.primary,
    error: colorScheme.error,
    brightness: colorScheme.brightness,
  ),
  appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surface),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    bodySmall: TextStyle(color: colorScheme.onSurface),
    bodyMedium: TextStyle(color: colorScheme.onSurface),
    bodyLarge: TextStyle(color: colorScheme.onSurface),
    labelSmall: TextStyle(color: colorScheme.onSurface),
    labelMedium: TextStyle(color: colorScheme.onSurface),
    labelLarge: TextStyle(color: colorScheme.onSurface),
    displaySmall: TextStyle(color: colorScheme.onSurface),
    displayMedium: TextStyle(color: colorScheme.onSurface),
    displayLarge: TextStyle(color: colorScheme.onSurface),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
      TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
      TargetPlatform.fuchsia: CupertinoPageTransitionsBuilder(),
    },
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: colorScheme.onPrimary,
    border: InputBorder.none,
    enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: colorScheme.primary),
  ),
);
