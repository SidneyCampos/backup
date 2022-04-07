import 'package:flutter/material.dart';
import 'package:navigation_flutter_demo/screen0.dart';
import 'package:navigation_flutter_demo/screen1.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go Back To Screen 1'),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            ElevatedButton(
              child: Text('Go Back To Screen 0'),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
          ],
        ),
      ),
    );
  }
}
