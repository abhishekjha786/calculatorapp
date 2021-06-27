import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doSubstraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "Output : $sum",
              style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            new Padding(padding: const EdgeInsets.only(top: 10.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: new Text("+"),
                  onPressed: () {
                    doAddition();
                  },
                ),
                new MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: new Text("-"),
                  onPressed: () {
                    doSubstraction();
                  },
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 10.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: new Text("*"),
                  onPressed: () {
                    doMultiplication();
                  },
                ),
                new MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: new Text("/"),
                  onPressed: () {
                    doDivision();
                  },
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              new MaterialButton(
                
                color: Colors.purple,
                textColor: Colors.white,
                child: new Text("clear"),
                onPressed: () {
                  doClear();
                },
              ),
            ])
          ],
        ),
      ),
    );
  }
}
