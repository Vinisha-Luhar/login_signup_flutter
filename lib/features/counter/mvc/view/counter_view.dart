

import 'package:flutter/material.dart';
import 'package:login_signup/features/counter/mvc/controller/counter_controller.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = context.watch<CounterController>();

    return Scaffold(
      appBar: AppBar(title: const Text('Counter MVC (Provider)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Value',style: TextStyle(fontSize: 18),),
            const SizedBox(height: 20,),
            Text('${controller.count}',
              style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
             ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: controller.decrement,
                    child: const Icon(Icons.remove)
                ),
                ElevatedButton(
                    onPressed: controller.increment,
                    child: const Icon(Icons.add)
                ),
              ],
            ),
            const SizedBox(height: 12,),
            TextButton(
                onPressed: controller.reset,
                child: const Text('RESET')
            )
          ],
        ),
      ),
    );
  }
}
