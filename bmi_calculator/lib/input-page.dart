import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableWidget(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                    child: ReusableWidget(
                  colour: Color(0xFF1D1E33),
                ))
              ],
            )),
            Expanded(
                child: ReusableWidget(
              colour: Color(0xFF1D1E33),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableWidget(
                  colour: Color(0xFF1D1E33),
                )),
                Expanded(
                  child: ReusableWidget(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.colour});
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
/* Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                   
                  ), */
