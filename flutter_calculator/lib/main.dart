import 'package:flutter/material.dart';
import 'package:flutter_calculator/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: HomeScreen(),
    );
  }
}
