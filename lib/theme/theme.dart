import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF6200EE); // Default primary color
  static const Color secondaryColor =
      Color(0xFF03DAC6); // Default secondary color
  static const Color backgroundColor =
      Color(0xFFFFFFFF); // Default background color
  static const Color surfaceColor = Color(0xFFEEEEEE); // Default surface color
  static const Color errorColor = Color(0xFFB00020); // Default error color
  static const Color onPrimaryColor = Colors.white; // Text color on primary
  static const Color onSecondaryColor = Colors.black; // Text color on secondary
  static const Color onBackgroundColor =
      Colors.black; // Text color on background
  static const Color onSurfaceColor = Colors.black; // Text color on surface
  static const Color onErrorColor = Colors.white; // Text color on error

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      background: backgroundColor,
      surface: surfaceColor,
      error: errorColor,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      onBackground: onBackgroundColor,
      onSurface: onSurfaceColor,
      onError: onErrorColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(color: onPrimaryColor, fontSize: 20),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    // Add more theming options as needed
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      background: Colors.black,
      surface: Colors.grey[850]!,
      error: errorColor,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      onBackground: Colors.white,
      onSurface: Colors.white,
      onError: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(color: onPrimaryColor, fontSize: 20),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    // Add more theming options as needed
  );
}
