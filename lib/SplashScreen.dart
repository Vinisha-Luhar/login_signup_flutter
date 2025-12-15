
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_signup/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://fabrikbrands.com/wp-content/uploads/Android-Logo-History-1.png',
                width: 100,
                height: 100),
            const SizedBox(height: 16,),
            const Text(
              'MyApp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}