import 'package:flutter/material.dart';

class SignupAppBar extends StatelessWidget {
  const SignupAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back_outlined,size: 24,color: Color(0xFF1A1C1E),));
  }
}
