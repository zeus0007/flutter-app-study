import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmi,
      @required this.result,
      @required this.interpretation});
  final String result;
  final String bmi;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(result.toUpperCase(), style: kResultLabelTextStyle),
                  Text(bmi, style: kResultNumberTextStyle),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
                    child: Text(
                      interpretation,
                      style: kResultInterpretationTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
