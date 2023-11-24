import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      //Re runs the build function to update the following:
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20,),
                foregroundColor: const Color.fromARGB(211, 255, 255, 255),
                backgroundColor: Color.fromARGB(255, 27, 75, 4),
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
