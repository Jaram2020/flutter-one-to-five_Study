import 'package:flutter/material.dart';
import 'package:page_route/screens/screen1.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('SCREEN 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: Text('go to SCREEN 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screen1();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.black,
              child: Text('back to SCREEN 0'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
// 0 -> 2 -> 1
// 0 <- 2 <- 1
