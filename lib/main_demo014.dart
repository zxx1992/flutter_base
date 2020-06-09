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
                title: Text("gridview组件-网格布局-count")
            ),
            body: LayoutDemo()
        )
    );
  }
}
//动态列表
class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '$i数据',
          style: TextStyle(color: Colors.purple, fontSize: 20),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7,//width/height
      crossAxisCount: 2,//一行显示的数量
        children: this._getListData(),
    );
  }
}