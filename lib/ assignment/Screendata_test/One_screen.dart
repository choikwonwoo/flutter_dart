import 'package:flutter/material.dart';
import 'User.dart';

class OneScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("OneScreen"),
        ),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OneScreen",
                  style: TextStyle(color: Colors.white, fontSize: 30),),

                ElevatedButton(
                    onPressed: ()async {
                      final result = await Navigator.pushNamed(
                          context, "/two",
                          arguments: {
                            "arg1" : 10,
                            "arg2" : "hello",
                            "arg3" : User("kkang","shoul")
                          }
                      );
                  print("${(result as User).name}");
                  },
                    child: Text("goto")),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("pop")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}