import 'package:flutter/material.dart';

void main() => ImageShow();

class ImageShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
