

import 'package:flutter/material.dart';
import 'package:login_signup/main.dart';

class LoadingSplashScreen extends StatefulWidget {
  const LoadingSplashScreen({super.key});

  @override
  State<LoadingSplashScreen> createState() => _LoadingSplashScreenState();
}

class _LoadingSplashScreenState extends State<LoadingSplashScreen> {

  @override
  void initState() {
    super.initState();
    _loading();
  }

  Future<void> _loading() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,size: 80,color: Colors.blue,),
                SizedBox(height: 16,),
                Text("Loading App",
                style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16,),
                CircularProgressIndicator(),
              ],
            ),
          )
      ),
    );
  }
}

