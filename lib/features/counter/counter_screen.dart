import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/counter/cubit/counter_cubit.dart';
import 'package:nti7/features/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('first Build');
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          BlocBuilder<CounterCubit, CounterStates>(
            
            builder: (context, state) {
              return Center(
                child: Text("${state.counter}", style: TextStyle(fontSize: 30)),
              );
            },
          ),

          Row(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Pressed add button');

                  context.read<CounterCubit>().increment();
                },
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Pressed remove button');
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
