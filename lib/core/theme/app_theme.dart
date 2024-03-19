import 'package:close_ai/constants/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() => ThemeData(
      fontFamily: 'HelveticaNeue',
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryDark,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: const RoundedRectangleBorder(),
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.colorWhite,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: AppColors.primaryDark,
          foregroundColor: AppColors.colorWhite,
          padding: const EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
      scaffoldBackgroundColor: AppColors.primaryLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: AppColors.black,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
