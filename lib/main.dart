import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 30, 200, 70),
          Color.fromARGB(255, 30, 60, 30)
          )
      ),
    ),
  );
}

