import 'package:flutter/material.dart';

abstract class AppTheme {
  static AppColors colors = AppColors();

  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: colors.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.backgroundColor,
      ),
    );
  }
}

class AppColors {
  final Color backgroundColor = const Color(0xFFFFFFFF);
  final Color paleWhite = const Color(0xFFF5F7F9);
  final Color slatePurple = const Color(0xFF3F3D56);
  final Color blue = const Color(0xFF007FFF);
  final Color slateBlue = const Color(0xFF8D9CB8);
  final Color mutedAzure = const Color(0xFFC6CFDC);
  final Color fireRed = const Color(0xFFFF5E5E);
}
