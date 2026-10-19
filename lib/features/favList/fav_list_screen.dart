import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti7/features/favList/cubit/cubit.dart';
import 'package:nti7/features/favList/cubit/states.dart';

class FavListScreen extends StatelessWidget {
  const FavListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fav List')),
      body: BlocBuilder<ListCubit, FavListStates>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.listOfItems.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    Text(state.listOfItems[index].title),
                    IconButton(
                      onPressed: () {
                        context.read<ListCubit>().toggle(index);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: state.listOfItems[index].isFav
                            ? Colors.red
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
