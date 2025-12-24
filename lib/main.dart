import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/AnimatedSplashScreen.dart';
import 'package:login_signup/AssetSplashScreen.dart';
import 'package:login_signup/GradientSplashScreen.dart';
import 'package:login_signup/LoadingSplashScreen.dart';
import 'package:login_signup/features/auth/signup/view/signup_screen.dart';
import 'package:login_signup/features/counter/bloc/counter_bloc.dart';
import 'package:login_signup/features/counter/bloc/screen/counter_screen.dart';
import 'package:login_signup/features/counter/mvc/controller/counter_controller.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/views/counter_view.dart';
import 'package:login_signup/features/post/view/post_list_screen.dart';
import 'package:login_signup/features/user/view/user_screen.dart';
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
      home: SignupScreen(),
      // home: MultiBlocProvider(providers: [
      //   BlocProvider(create: (context) => CounterBloc())
      // ], child: CounterScreen()),
    );
  }
}

