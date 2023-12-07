import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String rule;
  final List<String> image;
  final List<String> title;
  const Home({super.key, required this.rule, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Home"),
          Text(title as String),
          Text(rule),
          Image.asset(image[0]),

        ],
      ),
    );
  }
}
