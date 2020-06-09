import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}
//抽离body主体
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:  Text(
          'hello 1111',
          textDirection: TextDirection.ltr,
          style: TextStyle (
            fontSize: 40,
            color: Colors.purple,
          )
      ),
    );
  }
}