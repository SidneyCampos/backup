import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Magic 8 ball flutter'),
        ),
        body: MyApp(),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballFace = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballFace = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballFace.png'),
      ),
    );
  }
}
