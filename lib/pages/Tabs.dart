/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 14:41:02
 * @Description: Do not edit
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// 导入所需页面的组件
import './tabs/home.dart';
import './tabs/search.dart';
import './tabs/setting.dart';

// Tabs有状态组件
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return BottomBar();
  }
}

// BottomBar有状态组件
class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // 定义变量
  int _currentIndex = 0;
  List _pageList = [
    SearchPage(),
    HomePage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar组件")),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        fixedColor: Colors.pink,//选中的颜色
        iconSize: 36, //按钮的大小
        currentIndex: this._currentIndex, //当前选中项
        type: BottomNavigationBarType.fixed, //items大于3个的时候要加此属性，否则按钮会变白色
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("搜索")),
          BottomNavigationBarItem(icon: Icon(Icons.send), title: Text("发送")),
        ],
      ),
    );
  }
}
