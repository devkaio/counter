import 'package:counter/modules/counter_bloc/counter_page.dart';
import 'package:counter/modules/counter_flutter/counter_flutter.dart';
import 'package:counter/modules/counter_mobx/counter_mobx_page.dart';
import 'package:counter/modules/counter_mystate/counter_mystate.dart';
import 'package:counter/modules/counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';

class CounterListPage extends StatelessWidget {
  static const String id = "/counter";
  const CounterListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          direction: Axis.vertical,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                child: Text("Flutter Counter"),
                onPressed: () {
                  Navigator.pushNamed(context, CounterFlutter.id);
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                child: Text("Counter with MyState"),
                onPressed: () {
                  Navigator.pushNamed(context, CounterMyStatePage.id);
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                child: Text("Counter with Provider"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CounterProvider()));
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                child: Text("Counter with MobX"),
                onPressed: () {
                  Navigator.pushNamed(context, CounterMobxPage.id);
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                child: Text("Counter with BLoC"),
                onPressed: () {
                  Navigator.pushNamed(context, CounterBlocPage.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
