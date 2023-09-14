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
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: IconButton(icon: Icon(Icons.expand),onPressed: (){},),
                expandedHeight: 200,
                floating: true,
                pinned: false,
                snap: true,
                elevation: 50,
                backgroundColor: Colors.pink,
                flexibleSpace: Container(
                  decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("images/big.jpeg"),
                    fit: BoxFit.fill
                  )),
                ),
                title: Text("앱바 타이틀"),
                actions: <Widget>[
                  IconButton(onPressed: (){}, icon: Icon(Icons.add_alert),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.phone),)
                ],
              ),
              SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                  return ListTile(
                    title: Text("hello world item ${index}"),
                  );
              },)
              )
            ],
          ),
      ),
    );
  }
}