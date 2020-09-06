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
  var random = new Random();
  var randomNumberLeft = 1;
  var randomNumberRight = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomNumberLeft = 1 + random.nextInt(6);
                });
                print('Left button got pressed. $randomNumberLeft');
              },
              child: Image.asset('images/dice$randomNumberLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomNumberRight = 1 + random.nextInt(6);
                });
                print('Right button got pressed. $randomNumberRight');
              },
              child: Image.asset('images/dice$randomNumberRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
