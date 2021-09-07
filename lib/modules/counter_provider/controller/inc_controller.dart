import 'package:flutter/material.dart';

class IncController extends ChangeNotifier {
  int _number = 0;

  int get number => _number;

  increment() {
    _number++;
    notifyListeners();
  }
}
