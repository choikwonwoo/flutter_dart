import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  // root 번들을 이용해 애셋 파일을 읽어 반환하는 함수
  // future 함수는 비동기
  Future<String> useRootBundle() async{
    return await rootBundle.loadString('assets/text/my_text.txt');
  }
  // 디폴트 에셋을 이용해 에셋 파일을 읽어 반환하는 함수
  Future<String> useDefaultAssetBundle(BuildContext context) async{
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test'),),
        body: Column(
          children: [
            Image.asset('images/icon.jpg'),
            Image.asset('images/icon/user.png'),
            // 비동기 데이터를 이용해 화면을 구성하는 위젯
            FutureBuilder(
                future: useRootBundle(),
                builder: (context,snapshot){return Text('rootbundle : ${snapshot.data}');}
            ),
            FutureBuilder(
                future: useDefaultAssetBundle(context),
                builder: (context,snapshot){return Text('DefaultAssetBundle : ${snapshot.data}');}
            )
          ],
        ),
      ),
    );
  }
}