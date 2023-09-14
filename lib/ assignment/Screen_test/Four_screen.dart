import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("fourScreen"),
        ),
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("fourScreen",
                style: TextStyle(color: Colors.white, fontSize: 30),),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("pop"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}