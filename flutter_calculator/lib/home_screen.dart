import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textControllerInput = TextEditingController();
  final textControllerResult = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              decoration: numberBoxDecoration.copyWith(
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    showCursor: true,
                    readOnly: true,
                    decoration: new InputDecoration.collapsed(
                      hintText: "Input number to calculate",
                      hintStyle: expressionStyle.copyWith(
                        color: Colors.grey[200],
                        fontSize: 20,
                      ),
                      fillColor: Colors.deepPurpleAccent,
                    ),
                    // textInputAction: TextInputAction.none,
                    // keyboardType: TextInputType.number,
                    style: expressionStyle,
                    textAlign: TextAlign.right,
                    controller: textControllerInput,
                    onTap: () {
                      print("selected");
                    },
                  ),
                  Divider(
                    color: color,
                  ),
                  TextFormField(
                    showCursor: false,
                    readOnly: true,
                    decoration: new InputDecoration.collapsed(
                      hintText: "",
                      fillColor: Colors.deepPurpleAccent,
                    ),
                    // textInputAction: TextInputAction.none,
                    // keyboardType: TextInputType.number,
                    style: resultStyle,
                    textAlign: TextAlign.right,
                    controller: textControllerResult,
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      ClipboardManager.copyToClipBoard(textControllerResult.text).then((result) {
                        Fluttertoast.showToast(
                          msg: "Result Copied!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: color,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      });
                      print("selected");
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(8.0),
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: numberBoxDecoration,
                        child: Column(
                          children: <Widget>[
                            ButtonRowNumber(
                              button1: "7",
                              button2: "8",
                              button3: "9",
                              onPressed: () {
                                updatingInput("7");
                              },
                              onPressed2: () {
                                updatingInput("8");
                              },
                              onPressed3: () {
                                updatingInput("9");
                              },
                            ),
                            ButtonRowNumber(
                              button1: "4",
                              button2: "5",
                              button3: "6",
                              onPressed: () {
                                updatingInput("4");
                              },
                              onPressed2: () {
                                updatingInput("5");
                              },
                              onPressed3: () {
                                updatingInput("6");
                              },
                            ),
                            ButtonRowNumber(
                              button1: "1",
                              button2: "2",
                              button3: "3",
                              onPressed: () {
                                updatingInput("1");
                              },
                              onPressed2: () {
                                updatingInput("2");
                              },
                              onPressed3: () {
                                updatingInput("3");
                              },
                            ),
                            ButtonRowNumber(
                              button1: ".",
                              button2: "0",
                              button3: "←",
                              onPressed: () {
                                updatingInput(".");
                              },
                              onPressed2: () {
                                updatingInput("0");
                              },
                              onPressed3: () => setState(() {
                                if (textControllerInput.text.length > 0) {
                                  textControllerInput.text = textControllerInput.text.substring(0, textControllerInput.text.length - 1);
                                }
                              }),
                              onlongPress: () => setState(
                                () {
                                  textControllerInput.text = "";
                                  textControllerResult.text = "";
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      decoration: numberBoxDecoration,
                      child: ButtonColumn(
                          button1: "%",
                          button2: "*",
                          button3: "-",
                          button4: "+",
                          button5: "=",
                          onPressed: () {
                            updatingInput("%");
                          },
                          onPressed2: () {
                            updatingInput("*");
                          },
                          onPressed3: () {
                            updatingInput("-");
                          },
                          onPressed4: () {
                            updatingInput("+");
                          },
                          onPressed5: () {
                            calculate();
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updatingInput(String input) {
    setState(() {
      textControllerInput.text = textControllerInput.text + input;
    });
  }

  void calculate() {
    Parser p = new Parser();
    ContextModel cm = new ContextModel();
    Expression exp = p.parse(textControllerInput.text);
    setState(() {
      double result = exp.evaluate(EvaluationType.REAL, cm);
      textControllerResult.text = result.floor().toString();
    });
  }
}

class ButtonRowNumber extends StatelessWidget {
  ButtonRowNumber({
    this.button1,
    this.button2,
    this.button3,
    this.onPressed,
    this.onPressed2,
    this.onPressed3,
    this.onlongPress,
  });
  final String button1;
  final String button2;
  final String button3;
  Function onPressed;
  Function onPressed2;
  Function onPressed3;
  Function onlongPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Text(
                button1,
                style: numberTextStyle,
              ),
              onPressed: onPressed,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                button2,
                style: numberTextStyle,
              ),
              onPressed: onPressed2,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                button3,
                style: numberTextStyle,
              ),
              onPressed: onPressed3,
              onLongPress: onlongPress,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonColumn extends StatelessWidget {
  ButtonColumn({
    this.button1,
    this.button2,
    this.button3,
    this.button4,
    this.button5,
    this.onPressed,
    this.onPressed2,
    this.onPressed3,
    this.onPressed4,
    this.onPressed5,
  });

  final String button1;
  final String button2;
  final String button3;
  final String button4;
  final String button5;
  Function onPressed;
  Function onPressed2;
  Function onPressed3;
  Function onPressed4;
  Function onPressed5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Text(
              button1,
              style: operatorTextStyle,
            ),
            onPressed: onPressed,
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Text(button2, style: operatorTextStyle),
            onPressed: onPressed2,
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Text(
              button3,
              style: operatorTextStyle,
            ),
            onPressed: onPressed3,
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Text(
              button4,
              style: operatorTextStyle,
            ),
            onPressed: onPressed4,
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Text(
              button5,
              style: operatorTextStyle,
            ),
            onPressed: onPressed5,
          ),
        ),
      ],
    );
  }
}
