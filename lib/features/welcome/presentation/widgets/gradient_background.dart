import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';

/// Gradient background widget with dual-layer gradients
/// Reproduces the Figma design background with main and background gradients
class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.mainGradient,
        border: Border.all(
          color: AppColors.black,
          width: AppDimensions.borderWidth,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusLarge),
      ),
      child: Stack(
        children: [
          // Background gradient layer (positioned like in Figma)
          Positioned(
            left: -99,
            top: 26,
            child: Container(
              width: 433,
              height: 602,
              decoration: BoxDecoration(
                gradient: AppColors.backgroundGradient,
                borderRadius: BorderRadius.circular(AppDimensions.borderRadiusLarge),
              ),
            ),
          ),
          // Main content
          child,
        ],
      ),
    );
  }
}
