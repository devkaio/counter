import 'package:counter/modules/counter_mystate/counter_controller.dart';
import 'package:flutter_test/flutter_test.dart';

enum Status { empty, error, loading, success }
main() {
  late CounterController controller;

  setUp(() {
    controller = CounterController();
  });

  test('validar estado inicial do controller', () {
    expect(controller.state, CounterStatus.empty);
  });
}
