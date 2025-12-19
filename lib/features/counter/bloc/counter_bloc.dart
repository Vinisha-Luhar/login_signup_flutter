
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_signup/features/counter/bloc/counter_event.dart';
import 'package:login_signup/features/counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc() : super(CounterState(count: 0)){
    on<CounterIncrement>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });
    on<CounterDecrement>((event, emit) {
      emit(CounterState(count: state.count - 1));
    });
    on<CounterReset>((event, emit) {
      emit(CounterState(count: 0));
    });
  }
}