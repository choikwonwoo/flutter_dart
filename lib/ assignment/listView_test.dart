import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class User{
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget{

  List<User> user = [
    User("홍길동", "010123456", "emaiul1@nacer.ck"),
    User("길동동", "010223556", "esdfsdul1@nacer.ck"),
    User("길길동", "012223256", "sdfsdfl1@nacer.ck")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('test'),),
            body: ListView.separated(itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/big.jpeg'),
                ),
                title: Text(user[index].name),
                subtitle: Text(user[index].phone),
                trailing: Icon(Icons.more_vert),
                onTap: (){
                  print(user[index].name);
                },
              );
            }, separatorBuilder: (context, index){return Divider(height: 2, color:  Colors.black,);}, itemCount: user.length)
        )
    );
  }
}