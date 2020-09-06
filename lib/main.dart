import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var randomNumberLeft = 1;
  var randomNumberRight = 1;

  void randomDice() {
    setState(() {
      randomNumberLeft = 1 + Random().nextInt(6);
      randomNumberRight = 1 + Random().nextInt(6);
      print('Left button got pressed. $randomNumberLeft');
      print('Right button got pressed. $randomNumberRight');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomDice();
              },
              child: Image.asset('images/dice$randomNumberLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomDice();
              },
              child: Image.asset('images/dice$randomNumberRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
