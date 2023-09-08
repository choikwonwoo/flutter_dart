import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  PageController controller = PageController(initialPage: 1, viewportFraction: 0.8);

  List<String> user = ['서울','부산','대구','대전','보령','문산','인천','삼산','부평'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('test'),),
            body: PageView(
              controller: controller,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Center(
                    child: Text('one', style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.green,
                  child: Center(
                    child: Text('two', style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),
                ),Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Center(
                    child: Text('three', style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),
                ),
              ],
            )
        )
    );
  }
}