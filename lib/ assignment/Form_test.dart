import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('test'),),
            body: TestScreen()
        )
    );
  }
}

class TestScreen extends StatefulWidget{

  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<TestScreen>{

  String? firstName;
  String? lastName;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("form test"),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "first name",
                ),
                validator: (value){
                  if (value?.isEmpty ?? false){
                    return "please enter first name";}
                  return null;
                  },
                onSaved: (String? value){
                  firstName = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "last Name"
                ),
                validator: (value){
                  if(value?.isEmpty ?? false){
                    return "please enter last name";
                  }
                  return null;
                },
                onSaved: (String? value){
                  lastName = value;
                }
              ),
            ],
          )
        ),
        ElevatedButton(onPressed: (){
          if(_formKey.currentState?.validate() ?? false){
            _formKey.currentState?.save();
            print("${firstName} : $lastName");
          }
        }, child: Text("submit"))
      ],
    );
  }
}