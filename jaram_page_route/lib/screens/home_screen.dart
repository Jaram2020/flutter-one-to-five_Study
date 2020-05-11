import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static String jaramImg = 'images/example.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return JaramCard(
              imgPath: jaramImg,
              jaramStr: 'jaram ' + (index + 1).toString(),
              onPressed: () {
                Navigator.pushNamed(context, '/$index');
              },
            );
          },
        ),
      )),
    );
  }
}

class JaramCard extends StatelessWidget {
  JaramCard({
    this.jaramStr,
    this.imgPath,
    this.onPressed,
  });
  String jaramStr;
  String imgPath;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Container(
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
      ),
    );
  }
}
