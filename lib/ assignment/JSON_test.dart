import 'dart:convert';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class Todo{
  int id;
  String title;
  bool complete;

  Todo(this.id, this.title, this.complete);

  Todo.fromJson(Map<String, dynamic> json) : id = json["id"], title = json["title"], complete = json["complete"];

  Map<String, dynamic> toJson() => {"id": id, "title": title, "complete": complete};
}

class MyAppState extends State<MyApp>{
  String jsonStr = '{"id": 1, "title": "Hello", "complete": false}';
  Todo? todo;
  String result = "";

  onPressDecode(){
    Map<String, dynamic> map = jsonDecode(jsonStr);
    todo = Todo.fromJson(map);
    setState(() {
      result = "decode : id: ${todo?.id}, title: ${todo?.title}, complete: ${todo?.complete}";
    });
  }
  onPressEncode(){
    setState(() {
      result = "encode ${jsonEncode(todo)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${result}"),
              ElevatedButton(onPressed: onPressDecode, child: Text("decode")),
              ElevatedButton(onPressed: onPressEncode, child: Text("encode")),
            ],
          ),
        ),
      ),
    );
  }
}