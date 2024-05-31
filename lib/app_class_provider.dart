import 'package:flutter/material.dart';

class AppClassProvider extends ChangeNotifier {
  int _number = 0;

  int get number => _number;

  void increment() {
    _number++;
    if (_number >= 20) {
      _number = 20;
    }
    notifyListeners();
  }

  void decriment() {
    _number--;
    if (_number <= 0) {
      _number = 0;
    }
    notifyListeners();
  }
}
