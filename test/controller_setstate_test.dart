import 'package:counter/controller.dart';
import 'package:flutter_test/flutter_test.dart';

enum Status { empty, error, loading, success }
main() {
  late Controller<Status> controller;

  setUp(() {
    controller = Controller<Status>(Status.empty);
  });

  test('validar estado inicial do controller', () {
    expect(controller.state, Status.empty);
  });

  test('validar o uso do listener', () {
    var isClicked = false;
    controller.listen((_) => isClicked = true);
    controller.update(Status.loading);
    expect(isClicked, isTrue);
  });
}
