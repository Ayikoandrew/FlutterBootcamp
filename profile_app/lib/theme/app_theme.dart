import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF6C5CE7);
  static const Color secondary = Color(0xFF00CEC9);
  static const backgroundColor = Color(0xFFF8F9FA);
  static const surfaceColor = Color(0xFFFFFFFF);
  static const textPrimary = Color(0xFF2D3436);
  static const textSecondary = Color(0xFF636E72);

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
      surface: backgroundColor,
    ),
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      color: surfaceColor,
    ),
  );

  static TextTheme get textTheme => TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: textPrimary,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: textPrimary,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: textPrimary,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: textPrimary, height: 1.5),
    bodyMedium: TextStyle(fontSize: 16, color: textSecondary, height: 1.4),
  );
}
