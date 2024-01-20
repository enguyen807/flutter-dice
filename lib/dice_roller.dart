import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_app/text_container.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 2;

  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: TextButton(
            onPressed: rollDice,
            child: const TextContainer('Roll Dice'),
          ),
        ),
      ],
    );
  }
}
