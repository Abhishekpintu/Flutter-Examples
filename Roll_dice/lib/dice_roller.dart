

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_drive/styled_text.dart';

class DiceRoller extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiceRoller();
  }

}

class _DiceRoller extends State<DiceRoller>{

  var activeDice = "assets/images/dice-1.png";
  void rollDice() {
    var roll = Random().nextInt(6)+1;
    print(roll);
    setState(() {
      activeDice = "assets/images/dice-$roll.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDice, width: 200),
        TextButton(
            onPressed: rollDice,
            child: const StyledText("Roll the Dice!!!"))
      ],

    );
  }
}