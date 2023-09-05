import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  String longText = '가나다라마바사아자차카타파하12345678910동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리 나라만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('hellow world',
              style:
              TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red,
                fontSize: 20,
                height: 2,
                backgroundColor: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
            Text(longText,
              style: TextStyle(fontSize: 20),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            RichText(text: TextSpan(
              text: 'he',
              style: TextStyle(fontSize: 20, color: Colors.black),
              children: [
                TextSpan(text: 'L',style: TextStyle(fontStyle: FontStyle.italic),
                children: [
                  TextSpan(text: 'lo'),
                  TextSpan(text: 'wo',style: TextStyle(color: Colors.red))
                ]),
                TextSpan(text: 'rld',style: TextStyle(fontWeight: FontWeight.bold))
              ]
            ))
          ],
        )),
    );
  }
}