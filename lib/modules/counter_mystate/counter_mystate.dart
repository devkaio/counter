import 'package:counter/modules/counter_mystate/counter_builder.dart';
import 'package:counter/modules/counter_mystate/counter_controller.dart';
import 'package:flutter/material.dart';

class CounterMyStatePage extends StatefulWidget {
  static const String id = "/counter-setstate";
  const CounterMyStatePage({Key? key}) : super(key: key);

  @override
  _CounterMyStatePageState createState() => _CounterMyStatePageState();
}

class _CounterMyStatePageState extends State<CounterMyStatePage> {
  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter with MyState')),
      body: CounterStateBuilder(
        controller: controller,
        builder: (_, state) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Text(state.toString()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
