import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/counter/counter_screen.dart';
import 'package:nti7/features/counter/cubit/counter_cubit.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterScreen(),
      ),
    );
  }
}
