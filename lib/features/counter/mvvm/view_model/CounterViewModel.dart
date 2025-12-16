
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/counter/mvvm/model/counter_model.dart';


class CounterViewModel extends Notifier<CounterModel>{

  @override
  CounterModel build() {
    return CounterModel(value: 0);
  }

  void increment()
  {
    state = state.copyWith(value: state.value + 1);
  }

  void decrement()
  {
    state = state.copyWith(value: state.value - 1);
  }

  void reset()
  {
    state = CounterModel(value: 0);
  }
}

final counterViewModelProvider = NotifierProvider<CounterViewModel,CounterModel>((){
  return CounterViewModel();
});