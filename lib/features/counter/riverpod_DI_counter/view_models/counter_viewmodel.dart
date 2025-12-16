
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/models/counter_model.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/providers/counter_provider.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/repositories/counter_repository.dart';

class CounterViewModel extends Notifier<CounterModel>{

  late CounterRepository _counterRepository;

  @override
  CounterModel build() {
    _counterRepository = ref.read(counterRepositoryProvider);
    return CounterModel(value: 0);
  }

  void increment(){
    state = state.copyWith(value: _counterRepository.increment(state.value));
  }

  void decrement(){
    state = state.copyWith(value: _counterRepository.decrement(state.value));
  }

  void reset(){
    state = state.copyWith(value: _counterRepository.reset());
  }

}