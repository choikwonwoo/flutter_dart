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
  TextState createState() => TextState();
}

class TextState extends State<TestScreen>{
  final controller = TextEditingController();
  int textCounter = 0;
  
  _printValue(){
    print("print : ${controller.text}");
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(() {_printValue();});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build..");
    return Column(
      children: [
        Text("textfield Test"),
        TextField(style: TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: "data",
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            hintText: "hint",
            helperText: "데이터를 입력",
            counterText: "${textCounter} characters",
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 5,
          maxLines: 5,
        ),
      ],
    );
  }


}