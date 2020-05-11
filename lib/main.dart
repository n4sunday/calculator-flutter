import 'package:flutter/material.dart';
//--------------------------------------------------------------------------Description in pdf------------------------------------------------------------------------------------------
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculator",
        home: Scaffold(
          appBar: AppBar(
              title: Text("Calculator by Nattapon Lueakaew 5935512004",
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          body: ListView(children: <Widget>[CalculatorApp()]),
        ));
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => new _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int step = 1;
  int input1 = 0;
  int input2 = 0;
  var inputOperator = '';
  var display = '';
  var displayAll = '';

  void handlerInput(int val) {
    if (step == 1) {
      setState(() {
        display = display + val.toString();
      });
    } else if (step == 2) {
      setState(() {
        display = display + val.toString();
      });
    } else if (step == 3) {
      setState(() {
        display = val.toString();
        step = 1;
      });
    }
  }

  void handlerOperator(String val) {
    setState(() {
      input1 = int.parse(display);
      step = 2;
      inputOperator = val;
      display = '';
    });
    setState(() {
      displayAll = input1.toString() + inputOperator.toString();
    });
  }

  void clearValue() {
    setState(() {
      step = 1;
      input1 = 0;
      input2 = 0;
      display = '';
      displayAll = '';
    });
  }

  void calResult() {
    setState(() {
      input2 = int.parse(display);
      displayAll =
          input1.toString() + inputOperator.toString() + input2.toString();
    });
    if (inputOperator == '+') {
      setState(() {
        display = (input1 + input2).toString();
      });
    } else if (inputOperator == '-') {
      setState(() {
        display = (input1 - input2).toString();
      });
    } else if (inputOperator == 'x') {
      setState(() {
        display = (input1 * input2).toString();
      });
    } else if (inputOperator == '/') {
      if (input2 == 0) {
        setState(() {
          display = 'Error';
        });
      } else {
        setState(() {
          display = (input1 / input2).toString();
        });
      }
    }
    setState(() {
      step = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey[900],
        child: Column(children: <Widget>[buildScreen(), buildKeyboard()]));
  }

  Widget buildScreen() {
    return Container(
        height: 310,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                    Text(displayAll.toString(),
                        style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                  ])),
            ),
            Expanded(
              flex: 10,
              child: Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                    Text(display.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold))
                  ])),
            ),
          ],
        ));
  }

  Widget buildKeyboard() {
    return Container(
        height: 300,
        color: Colors.blueGrey[900],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(9),
                      child: Text("9",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(8),
                      child: Text("8",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(7),
                      child: Text("7",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerOperator('+'),
                      child: Text("+",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(9),
                      child: Text("6",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(5),
                      child: Text("5",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(4),
                      child: Text("4",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerOperator('-'),
                      child: Text("-",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(3),
                      child: Text("3",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(2),
                      child: Text("2",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(1),
                      child: Text("1",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerOperator('x'),
                      child: Text("X",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => clearValue(),
                      child: Text("C",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerInput(0),
                      child: Text("0",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => calResult(),
                      child: Text("=",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => handlerOperator('/'),
                      child: Text("/",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ]));
  }
}
