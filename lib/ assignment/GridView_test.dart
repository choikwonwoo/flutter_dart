import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  List<String> user = ['서울','부산','대구','대전','보령','문산','인천','삼산','부평'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('test'),),
            body: GridView.builder(
              itemCount: user.length,
              itemBuilder: (context,index){
                return Card(
                  child: Column(
                    children: [
                      Text(user[index]), Image.asset('images/big.jpeg')
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            )
        )
    );
  }
}