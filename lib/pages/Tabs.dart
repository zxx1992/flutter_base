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
  // 定义变量
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);
  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  // 定义变量
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    SearchPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("BottomNavigationBar组件")),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        fixedColor: Colors.pink, //选中的颜色
        iconSize: 36, //按钮的大小
        currentIndex: this._currentIndex, //当前选中项
        type: BottomNavigationBarType.fixed, //items大于3个的时候要加此属性，否则按钮会变白色
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("搜索")),
          BottomNavigationBarItem(icon: Icon(Icons.send), title: Text("发送")),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            // 侧边栏头部组件
            // DrawerHeader(
            //   child: Text("抽屉头部"),
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: NetworkImage(
            //               "https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@68w_68h.webp"),
            //           fit: BoxFit.cover,)),
            // ),
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("zxx"),
                    accountEmail: Text("zxx@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@68w_68h.webp"),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i2.hdslb.com/bfs/archive/ffafd15e807745db8fd5c638c3c279413e85a30d.jpg@336w_190h.webp"),
                            fit: BoxFit.cover)),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://avatars0.githubusercontent.com/u/13998159?s=60&u=a2443372e9ea8dc3808b6933f17e9a9df9abbf7e&v=4")
                    ],
                  ),
                )
              ],
            ),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text("抽屉孩子1")),
            Divider(color: Colors.pink, height: 2), //一条线
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text("抽屉孩子2"),
                onTap: () {
                  // Navigator.of(context).pop();//hide 侧边栏
                  Navigator.pushNamed(context, '/user');
                }),

            Divider(color: Colors.pink, height: 2), //一条线
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text("抽屉孩子3"))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右边draw'),
      ),
    );
  }
}
