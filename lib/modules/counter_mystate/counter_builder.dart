import 'package:counter/controller.dart';
import 'package:flutter/material.dart';

class CounterStateBuilder<T> extends StatefulWidget {
  final Function(BuildContext context, T state) builder;
  final Controller<T> controller;
  const CounterStateBuilder({
    Key? key,
    required this.builder,
    required this.controller,
  }) : super(key: key);

  @override
  _CounterStateBuilderState<T> createState() => _CounterStateBuilderState<T>();
}

class _CounterStateBuilderState<T> extends State<CounterStateBuilder<T>> {
  @override
  void initState() {
    widget.controller.listen((_) => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.controller.state);
  }
}
