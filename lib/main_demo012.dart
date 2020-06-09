import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  List<Widget> _getData() {
    var templist = listData.map((value) {
      return ListTile(
          title: Text(value["title"]+value["author"]),
        leading: Image.network(value["imageUrl"]),
      );
    });
    return templist.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}