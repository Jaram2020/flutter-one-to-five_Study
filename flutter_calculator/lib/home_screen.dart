import 'package:flutter/material.dart';
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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Container(
                color: Colors.white,
                height: 80,
                child: TextFormField(
                  showCursor: true,
                  readOnly: true,
                  decoration: new InputDecoration.collapsed(
                    hintText: "Input number to calculate",
                    fillColor: Colors.deepPurpleAccent,
                  ),
                  // textInputAction: TextInputAction.none,
                  // keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepPurpleAccent,
                  ),
                  textAlign: TextAlign.right,
                  controller: textControllerInput,
                  onTap: () {
                    // FocusScope.of(context).requestFocus(new FocusNode());
                    // ClipboardManager.copyToClipBoard(textControllerResult.text).then((result) {
                    //   Fluttertoast.showToast(
                    //       msg: "Value copied to clipboard!",
                    //       toastLength: Toast.LENGTH_SHORT,
                    //       gravity: ToastGravity.CENTER,
                    //       timeInSecForIos: 1,
                    //       backgroundColor: Colors.blueAccent,
                    //       textColor: Colors.white,
                    //       fontSize: 16.0
                    //   );
                    // });
                    print("selected");
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlue,
                child: TextFormField(
                  showCursor: false,
                  readOnly: true,
                  decoration: new InputDecoration.collapsed(
                    hintText: "Result",
                    fillColor: Colors.deepPurpleAccent,
                  ),
                  // textInputAction: TextInputAction.none,
                  // keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepPurpleAccent,
                  ),
                  textAlign: TextAlign.right,
                  controller: textControllerResult,
                  onTap: () {
                    print("selected");
                  },
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 420,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ButtonRowNumber(
                          textControllerInput: textControllerInput,
                          button1: "7",
                          button2: "8",
                          button3: "9",
                          onPressed: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "7";
                          }),
                          onPressed2: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "8";
                          }),
                          onPressed3: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "9";
                          }),
                        ),
                        ButtonRowNumber(
                          textControllerInput: textControllerInput,
                          button1: "4",
                          button2: "5",
                          button3: "6",
                          onPressed: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "4";
                          }),
                          onPressed2: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "5";
                          }),
                          onPressed3: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "6";
                          }),
                        ),
                        ButtonRowNumber(
                          textControllerInput: textControllerInput,
                          button1: "1",
                          button2: "2",
                          button3: "3",
                          onPressed: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "1";
                          }),
                          onPressed2: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "2";
                          }),
                          onPressed3: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "3";
                          }),
                        ),
                        ButtonRowNumber(
                          textControllerInput: textControllerInput,
                          button1: ".",
                          button2: "0",
                          button3: "<-",
                          onPressed: () => setState(() {
                            textControllerInput.text = textControllerInput.text + ".";
                          }),
                          onPressed2: () => setState(() {
                            textControllerInput.text = textControllerInput.text + "0";
                          }),
                          onPressed3: () => setState(() {
                            if (textControllerInput.text.length > 0) {
                              textControllerInput.text = textControllerInput.text.substring(0, textControllerInput.text.length - 1);
                            }
                          }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    width: 150,
                    child: ButtonColumn(
                        textControllerInput: textControllerInput,
                        button1: "%",
                        button2: "*",
                        button3: "-",
                        button4: "+",
                        button5: "=",
                        onPressed: () => setState(() {
                              textControllerInput.text = textControllerInput.text + "%";
                            }),
                        onPressed2: () => setState(() {
                              textControllerInput.text = textControllerInput.text + "*";
                            }),
                        onPressed3: () => setState(() {
                              textControllerInput.text = textControllerInput.text + "-";
                            }),
                        onPressed4: () => setState(() {
                              textControllerInput.text = textControllerInput.text + "+";
                            }),
                        onPressed5: () {
                          Parser p = new Parser();
                          ContextModel cm = new ContextModel();
                          Expression exp = p.parse(textControllerInput.text);
                          setState(() {
                            textControllerResult.text = exp.evaluate(EvaluationType.REAL, cm).toString();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonRowNumber extends StatelessWidget {
  ButtonRowNumber({
    @required this.textControllerInput,
    this.button1,
    this.button2,
    this.button3,
    this.onPressed,
    this.onPressed2,
    this.onPressed3,
  });

  final TextEditingController textControllerInput;
  final String button1;
  final String button2;
  final String button3;
  Function onPressed;
  Function onPressed2;
  Function onPressed3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          child: Text(
            button1,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blueGrey,
            ),
          ),
          onPressed: onPressed,
        ),
        FlatButton(
          child: Text(
            button2,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blueGrey,
            ),
          ),
          onPressed: onPressed2,
        ),
        FlatButton(
          child: Text(
            button3,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blueGrey,
            ),
          ),
          onPressed: onPressed3,
        ),
      ],
    );
  }
}

class ButtonColumn extends StatelessWidget {
  ButtonColumn({
    @required this.textControllerInput,
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

  final TextEditingController textControllerInput;
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
        FlatButton(
          child: Text(
            button1,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          onPressed: onPressed,
        ),
        FlatButton(
          child: Text(
            button2,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          onPressed: onPressed2,
        ),
        FlatButton(
          child: Text(
            button3,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          onPressed: onPressed3,
        ),
        FlatButton(
          child: Text(
            button4,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          onPressed: onPressed4,
        ),
        FlatButton(
          child: Text(
            button5,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          onPressed: onPressed5,
        ),
      ],
    );
  }
}
