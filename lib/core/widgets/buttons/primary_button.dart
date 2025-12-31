

import 'package:flutter/material.dart';
import 'package:login_signup/core/theme/app_colors.dart';
import 'package:login_signup/core/theme/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {

  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading=false
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: FilledButton(
          onPressed: isLoading ? null : onPressed,
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 10
            ),
            backgroundColor: AppColors.registerButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
          child: isLoading
              ? const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.white,
            ),
          )
              : Text(text,style: AppTextStyle.registerButtonText)
      ),
    );
  }
}
