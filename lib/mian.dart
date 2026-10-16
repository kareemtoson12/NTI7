// Karim Toson || kareemtoson1@gmail.com || Fri Oct 16 2026 16:17:23

import 'package:flutter/material.dart';
import 'package:nti7/features/home/home_screen.dart';

void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
