import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String jaramImg = 'images/example.png';
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
                    JaramCard(
                      imgPath: jaramImg,
                      jaramStr: 'jaram 1',
                    ),
                    JaramCard(
                      imgPath: jaramImg,
                      jaramStr: 'jaram 2',
                    ),
                    SizedBox(
                      height: 16.0,
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

// int abc({int a, int b})
// abc(1,2)
// abc(b:2, a:1)
class JaramCard extends StatelessWidget {
  JaramCard({this.jaramStr, this.imgPath});
  String jaramStr;
  String imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      // color: Colors.black,
      child: Column(
        children: <Widget>[
          Image.asset(
            imgPath,
            height: 500,
          ),
          Text(
            jaramStr,
            style: TextStyle(
              fontFamily: 'BlackHanSans',
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ],
      ),
    );
  }
}
