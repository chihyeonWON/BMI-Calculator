import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BmiMain(),
    );
  }
}

// 첫 번째 페이지
class BmiMain extends StatefulWidget {
  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// 두 번째 페이지
class BmiResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

