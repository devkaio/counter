import 'package:counter/modules/counter_provider/controller/inc_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends StatefulWidget {
  static const String id = "/counter-provider";
  CounterProvider({Key? key}) : super(key: key);

  @override
  _CounterProviderState createState() => _CounterProviderState();
}

class _CounterProviderState extends State<CounterProvider> {
  @override
  Widget build(BuildContext context) {
    print('pagina reiniciada');
    return Scaffold(
      appBar: AppBar(title: Text('Default Flutter Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<IncController>(
              builder: (context, value, child) {
                print('numero reiniciado');
                return Text(
                  Provider.of<IncController>(context).number.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<IncController>(context, listen: false).increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
