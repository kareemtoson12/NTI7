// Karim Toson || kareemtoson1@gmail.com || Fri Oct 16 2026 19:34:15

// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:nti7/core/styels_maanger.dart';

class WeightAndAge extends StatefulWidget {
  int wieght;
  int age;
  bool isAge;

  WeightAndAge({
    super.key,
    required this.age,
    required this.isAge,
    required this.wieght,
  });

  @override
  State<WeightAndAge> createState() => _WeightAndAgeState();
}

class _WeightAndAgeState extends State<WeightAndAge> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              widget.isAge ? 'Age' : 'Weight',
              style: StyelsMaanger.whiteBold30,
            ),
            Text(
              widget.isAge ? widget.age.toString() : widget.wieght.toString(),
              style: StyelsMaanger.whiteBold30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),
                  onPressed: () {
                    widget.isAge ? widget.age-- : widget.wieght--;
                    setState(() {});
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: CircleBorder()),

                  onPressed: () {
                    widget.isAge ? widget.age++ : widget.wieght++;
                    setState(() {});
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//cloaning
