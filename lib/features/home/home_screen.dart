// Karim Toson || kareemtoson1@gmail.com || Fri Oct 16 2026 17:06:45

import 'package:flutter/material.dart';
import 'package:nti7/core/colors_manger.dart';
import 'package:nti7/core/styels_maanger.dart';
import 'package:nti7/features/home/widgets/gender_card.dart';
import 'package:nti7/features/home/widgets/wieght_age.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String genderName = '';
  double height = 100;
  int age = 22;
  int wieght = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.primryColor,
      appBar: AppBar(
        backgroundColor: ColorsManger.primryColor,
        title: Text('BMI Calculator', style: StyelsMaanger.whiteBold30),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                GenederCard(
                  icon: Icons.male,
                  title: 'Male',
                  isSelected: genderName == 'male',
                  ontap: () {
                    setState(() {
                      genderName = 'male';
                    });
                  },
                ),
                GenederCard(
                  icon: Icons.female,
                  title: 'female',
                  isSelected: genderName == 'female',
                  ontap: () {
                    setState(() {
                      genderName = 'female';
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                children: [
                  Text('Height', style: StyelsMaanger.whiteBold30),
                  Text(
                    height.toInt().toString(),
                    style: StyelsMaanger.whiteBold30,
                  ),
                  Slider(
                    activeColor: ColorsManger.secColor,
                    min: 100,
                    max: 200,
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                WeightAndAge(age: age, isAge: true, wieght: wieght),
                WeightAndAge(age: age, isAge: false, wieght: wieght),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
