import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColour;
  Color femaleCardColor = inactiveCardColour;

  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColour) {
        maleCardColor = activeCardColour;
        femaleCardColor = inactiveCardColour;
      } else {
        maleCardColor = inactiveCardColour;
      }
    } else if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColour) {
        maleCardColor = inactiveCardColour;
        femaleCardColor = activeCardColour;
      } else {
        femaleCardColor = inactiveCardColour;
      }
    }
  }

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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(Gender.male);
                        });
                      },
                      child: ResuableCard(
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                        colour: maleCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(Gender.female);
                        });
                      },
                      child: ResuableCard(
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                        colour: femaleCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ResuableCard(
                colour: activeCardColour,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResuableCard(
                      colour: activeCardColour,
                    ),
                  ),
                  Expanded(
                    child: ResuableCard(
                      colour: activeCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}
