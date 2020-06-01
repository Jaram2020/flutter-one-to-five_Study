import 'package:flutter/material.dart';

const color = Color(0xff8479CD);
const operatorTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
);
const numberTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
);
const expressionStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w300,
  color: color,
);

const resultStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: color,
);
var numberBoxDecoration = BoxDecoration(
  color: color,
  borderRadius: BorderRadius.circular(15.0),
  boxShadow: [
    BoxShadow(
      color: Color(0xff607D8B).withOpacity(0.3),
      spreadRadius: 1,
      blurRadius: 12,
      offset: Offset(5, 5),
    )
  ],
);
