import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "UI",
        home: Scaffold(
          appBar:
              AppBar(title: Text("Calculator by Nattapon Lueakaew 5935512004")),
          body: ListView(children: <Widget>[CalculatorApp()]),
        ));
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => new _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[100],
        child: Column(children: <Widget>[buildKeyboard()]));
  }

  Widget buildKeyboard() {
    return Container(
        height: 300,
        color: Colors.white,
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
                      onPressed: () => (null),
                      child: Text("9",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("8",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("7",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
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
                      onPressed: () => (null),
                      child: Text("6",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("5",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("4",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
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
                      onPressed: () => (null),
                      child: Text("3",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("2",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("1",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
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
                      onPressed: () => (null),
                      child: Text("C",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("0",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("=",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100,
                    height: 70,
                    child: RaisedButton(
                      onPressed: () => (null),
                      child: Text("/",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ]));
  }
}
