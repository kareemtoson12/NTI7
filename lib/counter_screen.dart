// Karim Toson || kareemtoson1@gmail.com || Fri Oct 16 2026 16:29:50

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Center(
              child: Text(counter.toString(), style: TextStyle(fontSize: 30)),
            ),

            IconButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
                print(counter);
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
