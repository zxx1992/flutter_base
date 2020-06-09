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
    var tempList = listData.map((value) {
      return Container(
        child: Column(//column是垂直布局,listView是平铺的
          children: <Widget>[
            Image.asset(value['imageUrl']),
            SizedBox(height: 10),//字体跟图片之间的间距
            Text(value['title'], style:TextStyle(color: Colors.purple, backgroundColor: Colors.yellow,fontSize: 24)),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 2
          )
        ),
      );
    });
    return tempList.toList();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
//      childAspectRatio: 0.7,//width/height
      crossAxisCount: 2,//一行显示的数量
        children: this._getListData(),
    );
  }
}