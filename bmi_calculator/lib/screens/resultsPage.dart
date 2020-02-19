import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable-Card.dart';
import 'package:bmi_calculator/components/buttom-button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interPretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMİ CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                  Text(resultText.toUpperCase(), style: resultTextStyle),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(
                    interPretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTittle: 'Re-CALCULATE',
            onTop: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
