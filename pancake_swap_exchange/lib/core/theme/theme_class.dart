import 'package:flutter/material.dart';
import 'package:pancake_swap_exchange/utils/constants/colors.dart';

abstract class AppTheme {
  static ThemeData appDarkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: AppColors.darkBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBlue,
      iconTheme: IconThemeData(color: AppColors.white),
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.white,
        fontSize: 40,
        fontWeight: FontWeight.w300,
      ),
      labelLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.purple,
        backgroundColor: AppColors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
