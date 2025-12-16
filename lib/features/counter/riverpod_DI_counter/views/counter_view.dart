
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/providers/counter_provider.dart';

class CounterView extends ConsumerWidget{

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final vm = ref.read(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text("Riverpod DI Counter"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${counter.value}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: vm.increment, child: Icon(Icons.add)),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: vm.decrement, child: Icon(Icons.remove)),
              ],
            ),
            TextButton(onPressed: vm.reset, child: const Text('Reset'))
          ],
        ),
      ),
    );
  }

}