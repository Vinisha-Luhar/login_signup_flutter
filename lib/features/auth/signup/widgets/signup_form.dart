

import 'package:flutter/material.dart';
import 'package:login_signup/core/validator/username_validator.dart';
import 'package:login_signup/core/widgets/inputs/app_text_field.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key});

  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            AppTextField(
                hint: 'validator',
                validator: UsernameValidator.validate,
            )
          ],
        )
    );
  }
}
