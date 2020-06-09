import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("列表组件-listView-动态列表")
          ),
        body: HomeContent()
      )
    );
  }
}
//动态列表
class HomeContent extends StatelessWidget {
//  自定义一个方法，
  List<Widget> getData() {
    List<Widget> list = new List();
    for (var i =0; i< 20; i++) {
      list.add(ListTile(
          title: Text("我是列表$i"),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this.getData(),
    );
  }
}