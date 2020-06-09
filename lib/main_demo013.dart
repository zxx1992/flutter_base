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
                title: Text("列表组件-listView-动态列表-实现方式ListView.builder")
            ),
            body: HomeContent()
        )
    );
  }
}
//动态列表
class HomeContent extends StatelessWidget {
//  List list = new List();
//  HomeContent构造函数
//  HomeContent() {
//    for (var i = 0; i< 20; i++) {
//      this.list.add("我是$i列表");
//    }
//  }

Widget _getListData(context, index) {
  return ListTile(
    title: Text(listData[index]["title"] + listData[index]["author"]),
  );
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: this._getListData
    );
  }
}