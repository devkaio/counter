import 'package:counter/modules/counter_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocView extends StatelessWidget {
  const CounterBlocView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BLoC Counter")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('$state');
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () => context.read<CounterCubit>().increment(),
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                icon: Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}
