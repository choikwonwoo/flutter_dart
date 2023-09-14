import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  bool _isDeepLink = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigator test",
      home: Navigator(pages: [
        MaterialPage(child: OneScreen()),
        if(_isDeepLink) MaterialPage(child: TwoScreen())
      ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}

class OneScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("oneScreen"),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("oneScreen", style: TextStyle(color: Colors.white, fontSize: 30),)
            ],
          ),
        ),
      ),
    );
  }
}

class TwoScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("twoScreen"),
      ),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("twoScreen", style: TextStyle(color: Colors.white, fontSize: 30),),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("pop"))
            ],
          ),
        ),
      ),
    );
  }
}