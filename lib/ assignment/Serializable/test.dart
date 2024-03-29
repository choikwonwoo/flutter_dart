import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test.g.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

@JsonSerializable()
class Location{
  String latitude;
  String longitude;

  Location(this.latitude,this.longitude);
  factory Location.fromJson(Map<String,dynamic> json) => _$LocationFromJson(json);
  Map<String,dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Todo{
  @JsonKey(name: "id")
  int todoId;
  String title;
  bool complete;

  Location location;
  Todo(this.location,this.complete,this.title,this.todoId);
  factory Todo.fromJson(Map<String,dynamic> json) => _$TodoFromJson(json);
  Map<String,dynamic> toJson() => _$TodoToJson(this);
}

class MyAppState extends State<MyApp>{
  String jsonStr = '{"id": 1, "title": "hello", "complete": false, "location": {"latitude": "37.5","longitude":"127.1"}}';
  Todo? todo;
  String result = '';

  onPressDecode(){
    Map<String,dynamic> map = jsonDecode(jsonStr);
    todo = Todo.fromJson(map);
    print(todo?.toJson());
    setState(() {
      result = "decode: ${todo?.toJson()}";
    });
  }
  onPressEncode(){
    setState(() {
      result = "encode : ${jsonEncode(todo)}";
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