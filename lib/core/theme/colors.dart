import 'package:flutter/material.dart';

class ColorsManager {
  /// purple colors
  static const Color eggplantPurple = Color(0xFF31274F);
  static const Color mutedPastelPurple = Color(0x4AC487C6);
  static const Color paleMauve = Color(0x4BC487C6);
  static const Color semiTransparentDarkPurple = Color(0x9931274F);
  static const Color lightPurple = Color(0xFFC487C6);
  static const Color normalPurple = Color(0xff544D80);

  /// blue colors

  static const Color mainBlue = Color(0xFF5B9EE1);
  static const Color darkNavyBlue = Color(0xFF1A2530);
  static const Color lightGray = Color(0xFF707B81);
  static const Color lighterGray = Color(0xFFF8F9FA);
  static const Color doveGray = Color(0xFF616161);
  /// Error colors
  static const Color errorDarkRed = Color(0xFFE53935); // Deep red
  static const Color errorLightRed = Color(0xFFEF5350); // Medium red
  static const Color errorSoftRed = Color(0xFFFF8A80); // Soft coral red

  /// Error Gradient
  static const LinearGradient errorGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      errorDarkRed,
      errorLightRed,
      errorSoftRed,
    ],
  );
}
///
