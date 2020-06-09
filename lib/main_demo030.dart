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
            appBar: AppBar(title: Text("StatefulWidget组件")), body: HomePage()));
  }
}

// 有状态组件

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children: this.list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList()),
        SizedBox(height: 20),
        RaisedButton(
          onPressed: () {
            setState(() {
              this.list.add("新增 一条新闻");
              // for (var i = 0; i < 10; i++) {
              //   this.list.add("$i 一条新闻");
              // }
            });
          },
          child: Text("按钮"),
        )
      ],
    );
  }
}
