import 'package:flutter/material.dart';
import 'Four_screen.dart';
import 'Three_Screen.dart';
import 'Two_screen.dart';
import 'One_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => OneScreen(),
        '/two': (context) => TwoScreen(),
        // '/three': (context) => ThreeScreen(),
        // '/four': (context) => FourScreen(),
      },
      onGenerateRoute: (settings){
        if(settings.name=='/three'){
          return MaterialPageRoute(builder: (context) => ThreeScreen(), settings: settings);
        }else if(settings.name=='/four'){
          return MaterialPageRoute(builder: (context)=>FourScreen(),settings: settings);
        }
      },
    );
  }
}