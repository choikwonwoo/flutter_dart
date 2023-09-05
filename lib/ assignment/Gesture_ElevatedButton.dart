import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  onPressed(){
    print('icon button click');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test'),),
        body: Column(children: [
            GestureDetector(
              child: Image.asset('images/icon/user.png'),
              onTap: (){
                print('image click');
              },
              onVerticalDragStart: (DragStartDetails details){
                print('${details.globalPosition.dx},${details.globalPosition.dy}');
                print('${details.localPosition.dx},${details.localPosition.dy}');
              },
            ),
          ElevatedButton(onPressed: (){print('엘베 클릭');}, child: Text('click me'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)))
          ],
        ),
      ),
    );
  }
}