import 'package:flutter/material.dart';
import 'package:login_signup/features/auth/signup/widgets/signup_app_bar.dart';
import 'package:login_signup/features/auth/signup/widgets/signup_form.dart';
import 'package:login_signup/features/auth/signup/widgets/signup_header.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignupAppBar(),
              SignupHeader(),
              SignupForm()
            ],
          ),
        ),
      ],
    );
  }
}
