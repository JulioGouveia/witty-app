import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(WittyApp());

class WittyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}











