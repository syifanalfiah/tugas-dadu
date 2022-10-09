import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Twin Dice Game'),
      ),
      body: DiceGame(),
    ),
  ));
}

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int diceNumber1 = 1;
  int diceNumber2 = 1;

  void updatedice() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.green,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      '$diceNumber1',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    FlatButton(
                      child: Image.asset('assets/img/dice$diceNumber1.png'),
                      onPressed: () {
                        updatedice();
                      },
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      '$diceNumber2',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    FlatButton(
                      child: Image.asset('assets/img/dice$diceNumber2.png'),
                      onPressed: () {
                        updatedice();
                      },
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
