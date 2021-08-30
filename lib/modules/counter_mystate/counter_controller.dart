import 'package:counter/controller.dart';

enum CounterStatus { empty, error, loading, success }

class CounterController extends Controller<int> {
  CounterController() : super(0);

  void increment() {
    update(state + 1);
  }
}
