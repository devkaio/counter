import 'package:counter/modules/counter_mobx/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final counter = CounterMobx();

class CounterMobxPage extends StatefulWidget {
  static const String id = "/counter-mobx";
  CounterMobxPage({
    Key? key,
  }) : super(key: key);

  @override
  _CounterMobxPageState createState() => _CounterMobxPageState();
}

class _CounterMobxPageState extends State<CounterMobxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return Material(
          child: Center(
            child: Ink(
              width: double.infinity,
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${counter.value}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                onTap: counter.increment,
              ),
            ),
          ),
        );
      }),
    );
  }
}
