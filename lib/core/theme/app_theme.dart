import 'package:flutter/material.dart';
import 'app_colors.dart';


class AppTheme {
static ThemeData lightTheme = ThemeData(
scaffoldBackgroundColor: AppColors.background,
fontFamily: 'Poppins',
appBarTheme: const AppBarTheme(
backgroundColor: AppColors.primary,
centerTitle: true,
),
);
}