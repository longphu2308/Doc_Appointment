import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppBarStyles {
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    color: Colors.black54,
  );

  static const TextStyle bodyLargeDark = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyMediumDark = TextStyle(
    color: AppColors.primary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodySmallDark = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 14,
  );

  static const TextStyle title = TextStyle(
    color: AppColors.textLight,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
