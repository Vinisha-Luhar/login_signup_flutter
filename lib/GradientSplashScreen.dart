

import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class GradientSplashScreen extends StatelessWidget {
  const GradientSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    });
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue,Colors.teal],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://fabrikbrands.com/wp-content/uploads/Android-Logo-History-1.png',
              width: 100,
              height: 100,),
              const SizedBox(height: 16,),
              const Text("Gradient App",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
