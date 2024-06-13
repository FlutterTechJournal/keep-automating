import 'package:flutter/material.dart';
import 'package:keep_automating/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 31, 31, 32),
            Color.fromARGB(255, 155, 158, 159)
          ],
        ),
      ),
    ),
  );
}
