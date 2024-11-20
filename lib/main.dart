import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll Dice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiceRoller(),
    );
  }
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 1; // Initial dice number is 1


  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roll Dice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'You rolled a $diceNumber',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 50),

            Image.asset('assets/dice-images/dice-$diceNumber.png', width: 150, height: 150),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: rollDice,
              child: const Text(
                'Roll the Dice!',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
