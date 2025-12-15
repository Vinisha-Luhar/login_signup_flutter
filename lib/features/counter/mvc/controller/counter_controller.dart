

import 'package:flutter/material.dart';
import 'package:login_signup/features/counter/mvc/model/counter_model.dart';

class CounterController extends ChangeNotifier {

  final CounterModel _counterModel = CounterModel();
  int get count => _counterModel.value;

  void increment()
  {
    _counterModel.value++;
    notifyListeners();
  }

  void decrement()
  {
    _counterModel.value--;
    notifyListeners();
  }

  void reset()
  {
    _counterModel.value=0;
    notifyListeners();
  }
}