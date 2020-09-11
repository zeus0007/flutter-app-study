import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ResuableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                  ResuableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ],
              ),
            ),
            ResuableCard(
              colour: Color(0xFF1D1E33),
            ),
            Expanded(
              child: Row(
                children: [
                  ResuableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                  ResuableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    ));
  }
}
