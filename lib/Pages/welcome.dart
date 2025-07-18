import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Welcome!",
          style: TextStyle(fontSize: 70, color: Colors.black),
        ),
      ),
    );
  }
}
