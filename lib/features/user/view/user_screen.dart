

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/user/controller/user_controller.dart';

class UserScreen extends ConsumerWidget{

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final userState = ref.watch(userControllerProvider);
    
    return Scaffold(
      appBar: AppBar(title: Text("User Profile"),
        actions: [
          IconButton(onPressed: (){
            ref.read(userControllerProvider.notifier).refreshUser();
          }, icon: Icon(Icons.refresh))
        ],
      ),
      body: userState.when(
          data: (user) => Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NAME: ${user.name}'),
                  Text('EMAIL: ${user.email}'),
                ],
              ),
          ),
          error: (error, stackTrace) => Center(child: Text('Error: $error')),
          loading: () => const Center(child: CircularProgressIndicator())
      ),
    );
  }
}