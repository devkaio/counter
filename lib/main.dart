import 'package:counter/appwidget.dart';
import 'package:counter/modules/counter_bloc/counter_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CounterBlocObserver();
  runApp(AppWidget());
}
