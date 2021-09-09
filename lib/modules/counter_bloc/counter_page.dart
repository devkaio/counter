import 'package:counter/modules/counter_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/counter_view.dart';

class CounterBlocPage extends StatelessWidget {
  static const String id = "/counter-bloc";
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterBlocView(),
    );
  }
}
