import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('SCREEN 1'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('go to SCREEN 2'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
