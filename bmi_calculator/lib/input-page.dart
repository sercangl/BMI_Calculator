import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable-Icon.dart';
import 'reusable-Card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;


// 1== Male  2== female
  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColour == inactiveCardColour) {
        femaleCardColour = inactiveCardColour;
        maleCardColour = activeCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    }
    if (selectedGender==Gender.female) {
      if (femaleCardColour == inactiveCardColour) {
        maleCardColour = inactiveCardColour;
        femaleCardColour = activeCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Bmi Calculator")),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableWidget(
                      colour: maleCardColour,
                      cardChild: ReusableIconWidget(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableWidget(
                    colour: femaleCardColour,
                    cardChild: ReusableIconWidget(
                        cardIcon: FontAwesomeIcons.venus, cardText: 'female'),
                  ),
                ))
              ],
            )),
            Expanded(
                child: ReusableWidget(
              colour: activeCardColour,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableWidget(
                  colour: activeCardColour,
                )),
                Expanded(
                  child: ReusableWidget(
                    colour: activeCardColour,
                  ),
                ),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
