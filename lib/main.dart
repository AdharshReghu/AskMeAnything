import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ball = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.blue,
          child: TextButton(
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ball.png')),
        ),
      ),
    );
  }
}
