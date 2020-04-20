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
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin: EdgeInsets.all(16.0),
                      // color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/example.png',
                            height: 500,
                          ),
                          Text(
                            "Jaram 1",
                            style: TextStyle(
                              fontFamily: 'BlackHanSans',
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      // color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/example.png',
                            height: 500,
                          ),
                          Text(
                            "Jaram 2",
                            style: TextStyle(
                              fontFamily: 'BlackHanSans',
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
