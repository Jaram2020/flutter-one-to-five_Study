import 'package:flutter/material.dart';
import 'package:page_route/screens/screen2.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('SCREEN 0'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('SCREEN 2 로 이동'),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return Screen2();
            //     },
            //   ),
            // );
            Navigator.pushNamed(context, '/2');
          },
        ),
      ),
    );
  }
}
