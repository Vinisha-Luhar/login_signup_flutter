import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/models/counter_model.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/repositories/counter_repository.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/services/counter_service.dart';
import 'package:login_signup/features/counter/riverpod_DI_counter/view_models/counter_viewmodel.dart';

final counterServiceProvider = Provider<CounterService>((ref) => CounterService());

final counterRepositoryProvider = Provider<CounterRepository>((ref) {
  final service = ref.read(counterServiceProvider);
  return CounterRepository(service);
});

final counterProvider = NotifierProvider<CounterViewModel,CounterModel>(CounterViewModel.new);