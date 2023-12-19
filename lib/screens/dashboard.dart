import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  final String rule;
  final List<String> image;
  final List<String> title;
  const DashboardScreen({super.key, required this.rule, required this.image, required this.title});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Home"),
          Text(widget.title as String),
          Text(widget.rule),
          Image.asset(widget.image[0]),

        ],
      ),
    );
  }
}

