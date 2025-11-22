import 'package:flutter/material.dart';
import 'app_colors.dart';

/// App text styles extracted from Figma design
class AppTextStyles {
  AppTextStyles._();

  // Welcome Text Style
  // Font: Tw Cen MT Condensed Extra Bold, 20px
  static const TextStyle welcomeText = TextStyle(
    fontFamily: 'sans-serif-condensed', // Fallback for Tw Cen MT
    fontSize: 20,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryRed,
    height: 1.083,
  );

  // Button Text Style
  // Font: Tw Cen MT Condensed Extra Bold, 14px
  static const TextStyle buttonText = TextStyle(
    fontFamily: 'sans-serif-condensed',
    fontSize: 14,
    fontWeight: FontWeight.w900,
    color: AppColors.black,
    height: 1.083,
  );

  // Tagline Text Style
  // Font: Times New Roman, 11px, Bold
  static const TextStyle taglineText = TextStyle(
    fontFamily: 'serif',
    fontSize: 11,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    height: 1.15,
  );
}
