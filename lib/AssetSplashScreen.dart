

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_signup/main.dart';

class AssetSplashScreen extends StatelessWidget {
  const AssetSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/splash_background.jpeg'),
              fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
