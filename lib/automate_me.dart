import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class AutomateMe extends StatefulWidget {
  const AutomateMe({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AutomateMe();
  }
}

class _AutomateMe extends State<AutomateMe> {
    var activeImage = 'assets/images/gears-2.png';
    var activeWidth = 350.0;
    var btnText = 'Automate me';

  void clickAutomate() {
    var randomVal = randomizer.nextInt(8) + 1;
    setState(() {
    activeImage = 'assets/images/gears-$randomVal.png';
    activeWidth = 350.0;
    btnText = 'Keep automating...';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeImage, width:activeWidth),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                key: const Key('automateMeButton'),
                onPressed: clickAutomate, 
                child: Text(btnText),),
            ),
          ],
        );
  }
}