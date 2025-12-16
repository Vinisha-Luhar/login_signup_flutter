import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/AnimatedSplashScreen.dart';
import 'package:login_signup/AssetSplashScreen.dart';
import 'package:login_signup/GradientSplashScreen.dart';
import 'package:login_signup/LoadingSplashScreen.dart';
import 'package:login_signup/features/counter/mvc/controller/counter_controller.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/views/counter_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     ProviderScope(child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      home: CounterView(),
    );
  }
}

