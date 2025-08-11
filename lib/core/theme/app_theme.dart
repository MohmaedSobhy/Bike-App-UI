import 'package:bike_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.mainColor,
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(fontSize: 14, color: AppColors.white),
    ),
  );
}
