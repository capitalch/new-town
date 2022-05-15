import 'package:flutter/material.dart';
import 'ibuki.dart';

class CounterNotifier extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incr() {
    _counter = _counter + 1;
    notifyListeners();
    // emit('test1', _counter);
  }
}
