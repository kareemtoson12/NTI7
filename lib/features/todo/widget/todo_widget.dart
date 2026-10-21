import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String title;
  final VoidCallback delete;
  const TodoWidget({super.key, required this.title, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 20)),
          IconButton(onPressed: delete, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
