

import 'package:flutter/material.dart';
import 'package:login_signup/core/theme/app_text_styles.dart';

class FieldLabel extends StatelessWidget {
  final String text;
  const FieldLabel(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: AppTextStyle.signupTextFieldLabel,);
  }
}
