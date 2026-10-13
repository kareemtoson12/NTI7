// Karim Toson || kareemtoson1@gmail.com || Mon Oct 12 2026 18:38:39
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(" news"),
        centerTitle: true,
        leading: Icon(Icons.add_ic_call),

        actions: [
          Icon(Icons.add_ic_call),
          Icon(Icons.add_ic_call),
          Icon(Icons.add_ic_call),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Pick your category \nof interest',
              style: TextStyle(fontSize: 30),
            ),

            SizedBox(
              height: 400,
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  CategoryCard(color: Colors.red, title: 'newssss'),
                  CategoryCard(
                    color: Colors.yellow,
                    title: 'neljadkjasdbkjwssss',
                  ),
                  CategoryCard(color: Colors.red, title: 'newssss'),
                  CategoryCard(
                    color: Colors.yellow,
                    title: 'neljadkjasdbkjwssss',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Color color;
  final String title;

  const CategoryCard({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [Image.asset('assets/logo.png', height: 100), Text(title)],
      ),
    );
  }
}
