import 'package:counter/modules/counter_mobx/counter_mobx_page.dart';
import 'package:counter/modules/counter_setstate/counter_setstate.dart';
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
                child: Text("Counter with SetState"),
                onPressed: () {
                  Navigator.pushNamed(context, CounterSetStatePage.id);
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: TextButton(
                child: Text("Counter with Provider"),
                onPressed: () {},
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
