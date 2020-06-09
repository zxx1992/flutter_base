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
                title: Text("gridview组件-网格布局-padding组件")
            ),
            body: LayoutDemo()
        )
    );
  }
}
//动态列表
class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding:EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Image.asset(value['imageUrl'], fit:BoxFit.cover),
            ),
          ],
        ),
      );
    });

    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        children: this._getListData(),
      )
    );
  }
}