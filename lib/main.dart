// Karim Toson || kareemtoson1@gmail.com || Wed Oct 14 2026 16:32:47

import 'package:flutter/material.dart';
import 'package:nti7/screen_one.dart';
import 'package:nti7/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
      routes: {
        "screenOne": (context) => ScreenOne(),
        "secScreen": (context) => ScreenTwo(),
      },
    );
  }
}
