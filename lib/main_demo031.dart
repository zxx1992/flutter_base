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
        home: Tabs());
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar组件")),
      body: Text("tabbar"),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        setState(() {
          this._currentIndex = index;
        });
      },
      currentIndex: this._currentIndex,//当前选中项
      type: BottomNavigationBarType.fixed,//items大于3个的时候要加此属性，
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页1")),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页2")),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页3")),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页3")),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页3")),
      ],
    );
  }
}

