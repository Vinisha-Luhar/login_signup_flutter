import 'package:flutter/material.dart';
import 'package:login_signup/core/theme/app_colors.dart';

class AppTextStyle{

  static const signupTextFieldLabel = TextStyle(
    color: AppColors.textSecondary,
    fontFamily: 'Plus Jakarta Sans',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.6,
    letterSpacing: -0.24,
  );

  static const signupFieldText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: -0.14,
    color: AppColors.textPrimary
  );

  static const registerButtonText = TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.4,
      letterSpacing: -0.14,
      color: Colors.white
  );

}