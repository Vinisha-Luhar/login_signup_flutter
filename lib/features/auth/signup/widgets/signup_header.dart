import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const Text("Sign up",
          style: TextStyle(
            fontSize: 32,
            fontWeight:
            FontWeight.bold,
            fontFamily: 'Inter',
            height: 1.3,
            letterSpacing: -0.64,
          ),
        ),
        const SizedBox(height: 12),
        const Text("Create an account to continue!",
          style: TextStyle(
            letterSpacing: -0.12,
            height: 1.4,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            color: Color(0xFF6C7278),
            fontSize: 12,
          ),),
        const SizedBox(height: 32),
      ],
    );
  }
}
