import 'package:flutter/material.dart';
import 'input-page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: InputPage(),
      theme: ThemeData.dark(),
      /* theme: ThemeData(
          primaryColor: Colors.yellow,
          scaffoldBackgroundColor: Colors.red,
          accentColor: Colors.purple,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),*/
    );
  }
}

