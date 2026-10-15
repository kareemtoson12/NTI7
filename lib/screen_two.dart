// Karim Toson || kareemtoson1@gmail.com || Wed Oct 14 2026 16:50:46

import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final List names = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(names[0], style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('go to screen one'),
            ),
          ],
        ),
      ),
    );
  }
}
