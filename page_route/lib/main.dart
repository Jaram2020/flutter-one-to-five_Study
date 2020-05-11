import 'package:flutter/material.dart';
import 'package:page_route/screens/screen0.dart';
import 'package:page_route/screens/screen1.dart';
import 'package:page_route/screens/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter screen navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => Screen0(),
        '/1': (context) => Screen1(),
        '/2': (context) => Screen2(),
      },
    );
  }
}
