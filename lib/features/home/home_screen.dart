import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/home/cubit/home_cubit.dart';
import 'package:nti7/features/home/cubit/states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeCubit>().createName(nameController.text);
                    },
                    child: Text('ADD'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeCubit>().getName();
                    },
                    child: Text('get'),
                  ),

                  ElevatedButton(onPressed: () {}, child: Text('DELETE')),
                  BlocBuilder<HomeCubit, HomeStates>(
                    builder: (context, state) {
                      if (state is HomeDataLoadedStates) {
                        return Text(state.name, style: TextStyle(fontSize: 30));
                      }
                      return Text('', style: TextStyle(fontSize: 30));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
