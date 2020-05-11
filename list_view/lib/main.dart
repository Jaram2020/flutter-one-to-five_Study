import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String jaramImg = 'images/example.png';
  //이미지 저장을 위해 이미지 경로를 string save
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return JaramCard(
                imgPath: jaramImg,
                jaramStr: 'jaram ' + (index + 1).toString(),
              );
            },
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
