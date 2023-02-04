import 'package:flutter/material.dart';
import 'package:pancake_swap_exchange/utils/constants/colors.dart';

abstract class AppTheme {
  static ThemeData appDarkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: AppColors.blue,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 23,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
      ),
      backgroundColor: AppColors.blue,
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
      labelSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: AppColors.purple,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
    ),
  );
}
