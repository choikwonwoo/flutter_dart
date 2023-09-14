import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text("firstData", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text("secondData", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text("thirdData", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    Text("fourthData", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
  ];
  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/big.jpeg"),
                    fit: BoxFit.fill
                )
            ),
          ),
          title: Text('appbar'),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.add_alert),onPressed: (){},),
            IconButton(icon: const Icon(Icons.phone),onPressed: (){},),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(colorScheme:ColorScheme.light(secondary: Colors.black)),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: Text("appbar BottomText"),
              ),
            ),
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "first",backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.business),label: "second",backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.school),label: "third",backgroundColor: Colors.orange),
            BottomNavigationBarItem(icon: Icon(Icons.catching_pokemon),label: "fourth",backgroundColor: Colors.pink),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pink[800],
          onTap: onItemTapped,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(child: Text("머리"),decoration: BoxDecoration(color: Colors.blue),),
              ListTile(title: Text("아이템1"),onTap: (){},),
              ListTile(title: Text("아이템2"),onTap: (){},),
            ],
          ),
        ),
      ),
    );
  }
}