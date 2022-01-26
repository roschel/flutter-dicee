import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _leftDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$_leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$_rightDiceNumber.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _leftDiceNumber = Random().nextInt(6) + 1;
                  _rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Text(
                "Roll the dices!",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        )
      ],
    );
  }
}
