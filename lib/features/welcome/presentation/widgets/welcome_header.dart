import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/app_dimensions.dart';

/// Welcome header widget with "Bienvenue à" text and icon
class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 148),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 62),
          const Text(
            'Bienvenue à',
            style: AppTextStyles.welcomeText,
          ),
          const SizedBox(width: 15),
          Container(
            width: AppDimensions.iconSize,
            height: AppDimensions.iconSize,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: AppDimensions.shadowBlur,
                  offset: const Offset(0, AppDimensions.shadowOffsetY),
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/icon_top.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
