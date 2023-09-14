import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  List<Widget> getWidgets(){
    List<Widget> widgets = [];
    for(var i =0; i<100; i++){
      widgets.add(ListTile(title: Text("안녕하세요 $i"),));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("mattile"),),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: getWidgets(),
            ),
          ),
        )
      ),
    );
  }
}