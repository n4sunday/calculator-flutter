import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "UI",
        home: Scaffold(
          appBar: AppBar(title: Text("Work3 (20%)")),
          body: ListView(children: <Widget>[headerSection, ListMenu()]),
        ));
  }
}

var headerSection = Container(
    height: 210,
    color: Colors.red,
    child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Column(children: <Widget>[
        Image.asset(
          'assets/images/coc.jpg',
          height: 210,
          width: 210,
        )
      ]),
      Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("CoC Resturant", style: TextStyle(fontSize: 20)),
            Text("Phuket, Thailand 83120", style: TextStyle(fontSize: 14)),
            Text(
              "Nattapon Lueakaew",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("5935512004",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ]));

class ListMenu extends StatefulWidget {
  @override
  _ListMenuState createState() => new _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {
  int menu1 = 0;
  int menu2 = 0;
  int menu3 = 0;
  int menu4 = 0;
  int menu5 = 0;
  var opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[100],
        height: 400,
        child: Column(children: <Widget>[buildListItem(), buildFooter()]));
  }

  Widget buildListItem() {
    return Container(
        height: 300,
        color: Colors.blue[100],
        child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Column(children: <Widget>[
            Row(children: <Widget>[
              Image.asset('assets/images/Menu1.jpg'),
              SizedBox(
                width: 140,
                child: Column(children: <Widget>[
                  Text("Menu 1", style: TextStyle(fontSize: 14)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () =>
                                  menu1 > 0 ? setState(() => menu1--) : '',
                              child: const Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(menu1.toString(),
                              style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () => setState(() => menu1++),
                              child: const Icon(
                                Icons.add,
                                size: 14,
                              ),
                            )),
                      ])
                ]),
              )
            ]),
          ]),
          Column(children: <Widget>[
            Row(children: <Widget>[
              Image.asset('assets/images/Menu2.jpg'),
              SizedBox(
                width: 140,
                child: Column(children: <Widget>[
                  Text("Menu 2", style: TextStyle(fontSize: 14)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () =>
                                  menu2 > 0 ? setState(() => menu2--) : '',
                              child: const Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(menu2.toString(),
                              style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () => setState(() => menu2++),
                              child: const Icon(
                                Icons.add,
                                size: 14,
                              ),
                            )),
                      ])
                ]),
              )
            ]),
          ]),
          Column(children: <Widget>[
            Row(children: <Widget>[
              Image.asset('assets/images/Menu3.jpg'),
              SizedBox(
                width: 140,
                child: Column(children: <Widget>[
                  Text("Menu 3", style: TextStyle(fontSize: 14)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () =>
                                  menu3 > 0 ? setState(() => menu3--) : '',
                              child: const Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(menu3.toString(),
                              style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () => setState(() => menu3++),
                              child: const Icon(
                                Icons.add,
                                size: 14,
                              ),
                            )),
                      ])
                ]),
              )
            ]),
          ]),
          Column(children: <Widget>[
            Row(children: <Widget>[
              Image.asset('assets/images/Menu4.jpg'),
              SizedBox(
                width: 140,
                child: Column(children: <Widget>[
                  Text("Menu 4", style: TextStyle(fontSize: 14)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () =>
                                  menu4 > 0 ? setState(() => menu4--) : '',
                              child: const Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(menu4.toString(),
                              style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () => setState(() => menu4++),
                              child: const Icon(
                                Icons.add,
                                size: 14,
                              ),
                            )),
                      ])
                ]),
              )
            ]),
          ]),
          Column(children: <Widget>[
            Row(children: <Widget>[
              Image.asset('assets/images/Menu5.jpg'),
              SizedBox(
                width: 140,
                child: Column(children: <Widget>[
                  Text("Menu 5", style: TextStyle(fontSize: 14)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () =>
                                  menu5 > 0 ? setState(() => menu5--) : '',
                              child: const Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(menu5.toString(),
                              style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(
                            width: 40,
                            child: RaisedButton(
                              onPressed: () => setState(() => menu5++),
                              child: const Icon(
                                Icons.add,
                                size: 14,
                              ),
                            )),
                      ])
                ]),
              )
            ]),
          ]),
        ]));
  }

  Widget buildFooter() {
    return Container(
        height: 100,
        color: Colors.white,
        child: SizedBox(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                width: 200,
                height: 100,
                color: Colors.green[300],
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () => (menu1 == 0 &&
                                menu2 == 0 &&
                                menu3 == 0 &&
                                menu4 == 0 &&
                                menu5 == 0)
                            ? setState(() => opacity = 1.0)
                            : {
                                setState(() => opacity = 0.0),
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => listOrder()))
                              },
                        child: Text("Submit Order",
                            style: TextStyle(
                                fontSize: 20, color: Colors.blue[300])),
                      ),
                      AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        child: Column(
                          children: <Widget>[
                            Text("***Please Select Menu****",
                                style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        opacity: opacity,
                      )
                    ]),
              )
            ])));
  }

  Widget listOrder() {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Order"),
        ),
        body: Container(
          child: Column(children: <Widget>[
            (menu1 > 0)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 40,
                            color: Colors.grey,
                          ),
                          Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Menu 1"))
                        ],
                      ),
                      Text(menu1.toString())
                    ],
                  )
                : Column(),
            (menu2 > 0)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 40,
                            color: Colors.grey,
                          ),
                          Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Menu 2"))
                        ],
                      ),
                      Text(menu2.toString())
                    ],
                  )
                : Column(),
            (menu3 > 0)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 40,
                            color: Colors.grey,
                          ),
                          Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Menu 3"))
                        ],
                      ),
                      Text(menu3.toString())
                    ],
                  )
                : Column(),
            (menu4 > 0)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 40,
                            color: Colors.grey,
                          ),
                          Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Menu 4"))
                        ],
                      ),
                      Text(menu4.toString())
                    ],
                  )
                : Column(),
            (menu5 > 0)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.fastfood,
                            size: 40,
                            color: Colors.grey,
                          ),
                          Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Menu 5"))
                        ],
                      ),
                      Text(menu5.toString())
                    ],
                  )
                : Column(),
          ]),
        ));
  }
}
