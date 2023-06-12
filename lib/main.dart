import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          "Dicee",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  @override
  int leftdicenum = 1;
  int rightdicenum = 1;
  void func() {
    setState(() {
      leftdicenum = Random().nextInt(6) + 1;
      rightdicenum = (Random().nextInt(6) + 1);
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: TextButton(
                onPressed: () {
                  func();
                  print("left button pressed");
                },
                child: Image(
                  image: AssetImage("images/dice$leftdicenum.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  func();
                  print("right button pressed");
                },
                child: Image.asset("images/dice$rightdicenum.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
