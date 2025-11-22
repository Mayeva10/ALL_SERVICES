import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../widgets/gradient_background.dart';
import '../widgets/welcome_header.dart';
import '../widgets/logo_section.dart';
import '../widgets/action_buttons.dart';

/// Welcome screen - Main landing page
/// Reproduces the Figma design with pixel-perfect accuracy
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: AppDimensions.frameWidth,
            height: AppDimensions.frameHeight,
            child: GradientBackground(
              child: Stack(
                children: [
                  // Status bar rectangle (top black bar)
                  Positioned(
                    left: 120,
                    top: 10,
                    child: Container(
                      width: 57,
                      height: 12,
                      decoration: BoxDecoration(
                        color: AppColors.darkGray,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.borderRadiusLarge,
                        ),
                      ),
                    ),
                  ),

                  // Welcome header with icon
                  const Positioned(
                    left: 0,
                    right: 0,
                    child: WelcomeHeader(),
                  ),

                  // Logo
                  const Positioned(
                    left: 60,
                    top: 207,
                    child: LogoSection(),
                  ),

                  // Action buttons
                  Positioned(
                    left: 83,
                    top: 389,
                    child: ActionButtons(
                      onLoginPressed: () {
                        // TODO: Navigate to login screen
                        debugPrint('Login button pressed');
                      },
                      onSignUpPressed: () {
                        // TODO: Navigate to sign up screen
                        debugPrint('Sign up button pressed');
                      },
                    ),
                  ),

                  // Bottom icon
                  Positioned(
                    left: 118,
                    top: 478,
                    child: Container(
                      width: AppDimensions.iconBottomSize,
                      height: AppDimensions.iconBottomSize,
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
                        'assets/images/icon_bottom.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Tagline
                  Positioned(
                    left: 78,
                    bottom: 544,
                    child: SizedBox(
                      width: 151,
                      height: 13,
                      child: Text(
                        'L\'expertise au dela des frontières',
                        style: AppTextStyles.taglineText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
