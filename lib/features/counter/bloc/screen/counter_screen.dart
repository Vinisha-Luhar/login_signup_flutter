import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_signup/features/counter/bloc/counter_bloc.dart';
import 'package:login_signup/features/counter/bloc/counter_event.dart';
import 'package:login_signup/features/counter/bloc/counter_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc=context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(title: Text("Batman Counter")),
      body: Center(
        child: BlocBuilder<CounterBloc,CounterState>(
            builder: (context, state) {
              return Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  for(int index=0;index<state.count;index++)
                    Positioned(
                        left: Random().nextInt(250).toDouble(),
                        top: Random().nextInt(400).toDouble(),
                        child: SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset('images/batman.jpg'),
                        )
                    )
                ],
              );
            },
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              onPressed: (){
                counterBloc.add(CounterIncrement());
              },
            child: Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: (){
              counterBloc.add(CounterDecrement());
            },
            child: Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: (){
              counterBloc.add(CounterReset());
            },
            child: Icon(Icons.exposure_zero),
          )
        ],
      ),
    );
  }
}
