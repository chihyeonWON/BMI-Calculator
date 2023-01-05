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
    return Scaffold(
      appBar:AppBar(
        title:Text('Bmi Calculator'),
      ),
      body: Container(
        padding:const EdgeInsets.all(16.0),
        child: Form(
          key:_formKey, // 키 할당
          child: Column(
            children:<Widget>[
              TextFormField(
                decoration: InputDecoration( // 외곽선이 있고 힌트로 '키'를 표시
                  border:OutlineInputBorder(),
                  hintText:'키', // placeholder 키
                ),
                keyboardType: TextInputType.number, // 숫자만 입력할 수 있음
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// 두 번째 페이지
class BmiResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

