import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'reusable-Card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Results")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Results', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('OVERWEIGHT', style: resultTextStyle),
                  Text('18.3', style: kBMITextStyle),
                  Text('Your BMI results is quite low, you should ear more!',
                      style: kBodyTextStyle),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
