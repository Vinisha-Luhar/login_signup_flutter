

import 'package:flutter/material.dart';
import 'package:login_signup/core/theme/app_input_decoration.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final bool readOnly;

  const AppTextField({
    super.key,
    required this.hint,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText=false,
    this.suffixIcon,
    this.onTap,
    this.readOnly=false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: -0.14,
        color: Color(0xFF1A1C1E)
      ),
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      readOnly: readOnly,
      onTap: onTap,
      decoration: AppInputDecoration.build(
          hintText: hint,
          suffixIcon: suffixIcon
      ),
    );
  }
}
