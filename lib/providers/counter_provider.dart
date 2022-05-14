import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  CounterProvider(String initialValue) {
    if (int.tryParse(initialValue) != null) {
      _counter = int.parse(initialValue);
    }
  }

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
