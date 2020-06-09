import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("card组件")), body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getData() {
//    List<Widget> list = new List();
//    for(var i =0;i<10;i++) {
//      list.add(
//        ListTile(
//          title: Text("$i",style: TextStyle(fontSize: 20,)),
//          subtitle: Text("高级工程师"),
//        )
//      );
//    }
//    return list;
    var tempList = listData.map((value) {
      return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(value["title"],
                  style: TextStyle(
                    fontSize: 20,
                  )),
              subtitle: Text("高级工程师"),
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
    return ListView(
      children: this._getData(),
    );
  }
}
