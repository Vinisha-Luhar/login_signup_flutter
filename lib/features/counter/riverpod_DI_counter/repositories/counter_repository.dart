
import 'package:login_signup/features/counter/riverpod_DI_counter/services/counter_service.dart';

class CounterRepository{

  final CounterService counterService;
  CounterRepository(this.counterService);

  int increment(int value) => counterService.increment(value);

  int decrement(int value) => counterService.decrement(value);

  int reset() => counterService.reset();

}