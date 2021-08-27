import 'package:counter/modules/counter_mobx/counter_mobx_page.dart';
import 'package:counter/modules/counter_setstate/counter_setstate.dart';
import 'package:counter/screens/counter_list.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CounterListPage.id,
      routes: {
        CounterListPage.id: (context) => CounterListPage(),
        CounterMobxPage.id: (context) => CounterMobxPage(),
        CounterSetStatePage.id: (context) => CounterSetStatePage(),
      },
    );
  }
}
