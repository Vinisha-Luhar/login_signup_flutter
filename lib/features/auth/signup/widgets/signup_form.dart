

import 'package:flutter/material.dart';
import 'package:login_signup/core/theme/app_text_styles.dart';
import 'package:login_signup/core/validator/email_validator.dart';
import 'package:login_signup/core/validator/username_validator.dart';
import 'package:login_signup/core/widgets/buttons/primary_button.dart';
import 'package:login_signup/core/widgets/inputs/app_text_field.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key});

  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///Full Name
            Text('Full Name',style: AppTextStyle.signupTextFieldLabel),
            const SizedBox(height: 2,),
            AppTextField(
                hint: 'full name',
                validator: UsernameValidator.validate,
            ),

            const SizedBox(height: 16),

            ///Email
            Text('Email',style: AppTextStyle.signupTextFieldLabel),
            const SizedBox(height: 2,),
            AppTextField(
                hint: 'abc@gmail.com',
                keyboardType: TextInputType.emailAddress,
                validator: EmailValidator.validate,
            ),

            const SizedBox(height: 16),

            ///BirthDate
            Text('Birth of date',style: AppTextStyle.signupTextFieldLabel),
            AppTextField(
              hint: 'DD/MM/YYYY',
            ),

            const SizedBox(height: 16),

            ///Phone Number
            Text('Phone Number',style: AppTextStyle.signupTextFieldLabel),
            AppTextField(hint: '9999999999'),

            const SizedBox(height: 16),

            ///Password
            Text('Set Password',style: AppTextStyle.signupTextFieldLabel),
            AppTextField(hint: '********'),

            const SizedBox(height: 24),

            PrimaryButton(
            text: 'Register',
            onPressed: (){
              if(_formKey.currentState!.validate()){

              }
            }
            )
          ],
        )
    );
  }
}
