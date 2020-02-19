import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';



class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.onTop, @required this.buttonTittle});

  final Function onTop;
  final String buttonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        child: Center(child: Text(buttonTittle, style: kLargeButtonTextStyle)),
        color: bottomContainerColour,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
