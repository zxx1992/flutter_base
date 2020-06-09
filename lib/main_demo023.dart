import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Stack组件，多个组件定位，Align组件")),
            body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(//整个容器居中
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
//          alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.home,size:40,color: Colors.purple,),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.search,size:40,color: Colors.purple,),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.send,size:40,color: Colors.purple,),
            ),
          ],
        ),
      )
    );
  }
}

