import 'package:flutter/material.dart';
import 'package:jibeto_app/core/theme/app_collors.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryVariant,
        secondary: AppColors.secondary,
        secondaryContainer: AppColors.secondaryVariant,
        surface: AppColors.surface,
        error: AppColors.error,
        onPrimary: AppColors.onPrimary,
        onSecondary: AppColors.onSecondary,
        onSurface: AppColors.onSurface,
        onError: AppColors.onError,
      ),
      fontFamily: 'YourCustomFont',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.onBackground),
        bodyLarge: TextStyle(fontSize: 16, color: AppColors.onBackground),
        labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.onPrimary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        elevation: 4,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
