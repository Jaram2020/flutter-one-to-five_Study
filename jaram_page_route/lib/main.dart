import 'package:flutter/material.dart';
import 'package:jaram_page_route/screens/home_screen.dart';
import 'package:jaram_page_route/screens/screen0.dart';
import 'package:jaram_page_route/screens/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //이미지 저장을 위해 이미지 경로를 string save
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/0': (context) => Screen0(),
        '/1': (context) => Screen1(),
      },
    );
  }
}

// int abc({int a, int b})
// abc(1,2)
// abc(b:2, a:1)
