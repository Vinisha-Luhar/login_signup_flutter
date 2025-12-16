
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/counter/mvvm/view_model/CounterViewModel.dart';

class CounterView extends ConsumerWidget{
  const CounterView({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter=ref.watch(counterViewModelProvider);
    final viewModel = ref.read(counterViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${counter.value}',style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: viewModel.increment,child: Icon(Icons.add),),
                const SizedBox(width: 20),
                FloatingActionButton(onPressed: viewModel.reset,child: Icon(Icons.refresh),),
                const SizedBox(width: 20),
                FloatingActionButton(onPressed: viewModel.decrement,child: Icon(Icons.remove),),
              ],
            )
          ],
        ),
      ),
    );
  }

}