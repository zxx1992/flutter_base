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
                title: Text("gridview组件-网格布局-builder")
            ),
            body: LayoutDemo()
        )
    );
  }
}
//动态列表
class LayoutDemo extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      child: Column(//column是垂直布局,listView是平铺的
        children: <Widget>[
          Image.asset(listData[index]['imageUrl']),
          SizedBox(height: 10),//字体跟图片之间的间距
          Text(listData[index]['title'], style:TextStyle(color: Colors.purple, backgroundColor: Colors.yellow,fontSize: 24)),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 1,
        )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 2,
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}