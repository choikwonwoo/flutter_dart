import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyApp> with SingleTickerProviderStateMixin{
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('tabbar'),
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(text: 'one',),
              Tab(text: 'two',),
              Tab(text: 'three',)
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Center(
              child: Text('one', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Text('two', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Text('three', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}