import 'package:flutter/material.dart';
import 'package:keep_automating/automate_me.dart';
// import 'package:keep_learning/styled_text.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: AutomateMe()
      ),
    );
  }
}


