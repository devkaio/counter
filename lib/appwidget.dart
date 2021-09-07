import 'package:counter/modules/counter_bloc/counter_page.dart';
import 'package:counter/modules/counter_flutter/counter_flutter.dart';
import 'package:counter/modules/counter_mobx/counter_mobx_page.dart';
import 'package:counter/modules/counter_mystate/counter_mystate.dart';
import 'package:counter/modules/counter_provider/controller/inc_controller.dart';
import 'package:counter/modules/counter_provider/counter_provider.dart';
import 'package:counter/screens/counter_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IncController(),
      child: MaterialApp(
        initialRoute: CounterListPage.id,
        routes: {
          CounterListPage.id: (context) => CounterListPage(),
          CounterMobxPage.id: (context) => CounterMobxPage(),
          CounterMyStatePage.id: (context) => CounterMyStatePage(),
          CounterFlutter.id: (context) => CounterFlutter(),
          CounterBlocPage.id: (context) => CounterBlocPage(),
          CounterProvider.id: (context) => CounterProvider(),
        },
      ),
    );
  }
}
