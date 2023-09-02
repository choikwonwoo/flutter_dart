import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListWidget()
    );
  }
}
class MyListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyListWidgetState();
  }
}

class _MyListWidgetState extends State<MyListWidget>{
  List<Widget> widgetList = [
    MyColorItemWidget(Colors.red,key:UniqueKey()),
    MyColorItemWidget(Colors.blue,key:UniqueKey())
  ];

  void OnChange(){
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('key test'),),
      body: Column(children: [Row(children: widgetList,),ElevatedButton(onPressed: OnChange, child: Text('togle'))],),
    );
  }
}

class MyColorItemWidget extends StatefulWidget {
  Color color;
  MyColorItemWidget(this.color,{Key? key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return _MyColorItemWidget(color);
  }
}

class _MyColorItemWidget extends State<StatefulWidget> {
  Color color;
  _MyColorItemWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(color: color, width: 150,height: 150,));
  }
}

