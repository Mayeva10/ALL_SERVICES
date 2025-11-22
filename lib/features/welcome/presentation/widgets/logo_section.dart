import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';

/// Logo section widget displaying the ALL SERVICES logo
class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 207),
      child: Center(
        child: Image.asset(
          'assets/images/logo_all_services.png',
          width: AppDimensions.logoWidth,
          height: AppDimensions.logoHeight,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
