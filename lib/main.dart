import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFB5A48),
        appBar: AppBar(
          title: const Center(
            child: Text('Roll It'),
          ),
          backgroundColor: const Color(0xFF640C3F),
        ),
        body: Rollit(),
      ),
    ),
  );
}

class Rollit extends StatefulWidget {
  @override
  State<Rollit> createState() => _RollitState();
}

class _RollitState extends State<Rollit> {
  int left = 1;
  int right = 1;

  void changeDiceFace() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          changeDiceFace();
        });
      },
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$left.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$right.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
