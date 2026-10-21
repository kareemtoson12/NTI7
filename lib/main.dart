import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/todo/cubit/todo_cubit.dart';
import 'package:nti7/features/todo/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         
      home: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => TodoCubit())],
        child: TodoScreen(),
      ),
    );
  }
}
