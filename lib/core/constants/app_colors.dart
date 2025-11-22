import 'package:flutter/material.dart';

/// App color constants extracted from Figma design
class AppColors {
  AppColors._();

  // Primary Colors
  static const Color primaryBlue = Color(0xFF150FB5); // rgba(21, 15, 181, 1)
  static const Color primaryRed = Color(0xFFC82126); // #C82126
  static const Color darkViolet = Color(0xFF36338E); // rgba(54, 51, 142, 1)
  static const Color darkNavy = Color(0xFF060527); // rgba(6, 5, 39, 1)

  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color darkGray = Color(0xFF333232);
  static const Color lightGray = Color(0xFFE0DBDB);

  // Gradient Colors
  static const LinearGradient mainGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.32, 0.52],
    colors: [
      Color(0xFF150FB5), // rgba(21, 15, 181, 1)
      Color(0x85E0DBDB), // rgba(224, 219, 219, 0.52)
    ],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.74, 1.0],
    colors: [
      Color(0xFF36338E), // rgba(54, 51, 142, 1)
      Color(0xFF060527), // rgba(6, 5, 39, 1)
    ],
  );

  // Shadow Colors
  static const Color shadowColor = Color(0x40000000); // rgba(0, 0, 0, 0.25)
}
