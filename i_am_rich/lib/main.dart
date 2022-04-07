import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Isto é um teste',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Image(
            image: AssetImage('./images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
