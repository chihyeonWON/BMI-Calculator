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
      home: BmiResult(173, 65),
    );
  }
}

// 첫 번째 페이지
class BmiMain extends StatefulWidget {
  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>(); // 폼의 상태를 얻기 위한 키
  
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
              SizedBox(
                height:16.0,
              ),
              TextFormField(
                decoration: InputDecoration( // 외곽선이 있고 힌트로 '몸무게'를 표시
                  border:OutlineInputBorder(),
                  hintText:'몸무게', // placeholder 몸무게
                ),
                keyboardType: TextInputType.number, // 숫자만 입력할 수 있음
              ),
              Container( // 버튼 여백,배치
                margin:const EdgeInsets.only(top:16.0), // 위 쪽에만 16크기의 여백
                alignment: Alignment.centerRight, // 오른쪽 가운데에 위치
                child:ElevatedButton(
                  onPressed: (){
                  },
                  child:Text('결과'),
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
  final double height; // 키
  final double weight; // 몸무게

  BmiResult(this.height, this.weight); // 키와 몸무게를 받는 생성자
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('비만도 계산기')),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text( // TODO : 수정할 부분(글자)
              '정상',
              style:TextStyle(fontSize:36),
            ),
            SizedBox(
              height:16,
            ),
            Icon( // TODO : 수정할 부분(아이콘)
              Icons.sentiment_satisfied, // 만족하는 아이콘 표시
              color:Colors.green,
              size:100,
            ),
          ],
        ),
      )
    );
  }
}

