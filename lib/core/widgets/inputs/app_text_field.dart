

import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final String? Function(String?)? validator;

  const AppTextField({required this.hint, this.validator,super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        hintText: hint
      ),
    );
  }
}
