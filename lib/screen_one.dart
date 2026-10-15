// Karim Toson || kareemtoson1@gmail.com || Wed Oct 14 2026 16:48:24

import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('first screen', style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'secScreen', arguments: ['ahmed','omar']);
              },
              child: Text('go to screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
