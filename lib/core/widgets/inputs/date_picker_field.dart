

import 'package:flutter/material.dart';
import 'package:login_signup/core/theme/app_input_decoration.dart';

class DatePickerField extends StatelessWidget {

  final TextEditingController dateController;
  final VoidCallback onTap;
  final String hint;

  const DatePickerField({
    super.key,
    required this.dateController,
    required this.onTap,
    this.hint='DD/MM/YYYY'
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: dateController,
      readOnly: true,
      onTap: onTap,
      decoration: AppInputDecoration.build(
          hintText: hint,
        suffixIcon: const Icon(Icons.calendar_today_outlined,size: 16,color: Color(0xFF6C7278),),
      ),
    );
  }
}
