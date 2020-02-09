import 'package:flutter/material.dart';

const labelTextStyle= TextStyle(fontSize: 18.0, color: Color(0xFF8DbE98));

class ReusableIconWidget extends StatelessWidget {
  ReusableIconWidget({@required this.cardIcon, this.cardText});
  final IconData cardIcon;
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(cardIcon, size: 80.0),
          SizedBox(height: 15.0),
          Text(cardText,
              style: labelTextStyle),
        ]);
  }
}