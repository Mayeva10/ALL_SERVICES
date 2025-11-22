import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/app_dimensions.dart';

/// Action buttons widget with "Se connecter" and "S'inscrire" buttons
class ActionButtons extends StatelessWidget {
  final VoidCallback? onLoginPressed;
  final VoidCallback? onSignUpPressed;

  const ActionButtons({
    super.key,
    this.onLoginPressed,
    this.onSignUpPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 389),
      child: Column(
        children: [
          // Se connecter button
          _buildActionButton(
            text: 'Se connecter',
            onPressed: onLoginPressed,
          ),
          const SizedBox(height: AppDimensions.buttonSpacing),
          // S'inscrire button
          _buildActionButton(
            text: "S'inscrire",
            onPressed: onSignUpPressed,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required String text,
    VoidCallback? onPressed,
  }) {
    return Container(
      width: AppDimensions.buttonWidth,
      height: AppDimensions.buttonHeight,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(
          color: AppColors.black,
          width: AppDimensions.buttonBorderWidth,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusLarge),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(AppDimensions.borderRadiusLarge),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.buttonText,
            ),
          ),
        ),
      ),
    );
  }
}
