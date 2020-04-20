import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/example.png',
                          height: 500,
                        ),
                        Text("Jaram 1"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/example.png',
                          height: 500,
                        ),
                        Text("Jaram 2"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/example.png',
                          height: 500,
                        ),
                        Text("Jaram 3"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/example.png',
                          height: 500,
                        ),
                        Text("Jaram 4"),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
