import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget platformUI(){
    if(Platform.isIOS){
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness :Brightness.light,),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(middle: Text("cup"),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(child: Text("button"), onPressed: (){}),
              Center(
                child: Text("text"),
              )
            ],
          ),
        ),
      );
    } else if(Platform.isAndroid){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("mattile"),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: (){}, child: Text("click"),),
              Center(
                child: Text("hi"),
              )
            ],
          ),
        ),
      );
    }else{
      return Text("unuse");
    }
  }

  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}