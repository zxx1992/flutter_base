/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-10 13:40:10
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  //继承 SingleTickerProviderStateMixin
// 定义一个TabController
  TabController _tabController;
  @override
  void initState() {
    // 生命周期函数 //初始状态方法
    // TODO: implement initState
    super.initState();

    // 实例化
    _tabController = new TabController(
      length: 2,
      vsync: this,
    );
    // 监听事件
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  // 销毁生命周期函数
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: "蔬菜1",
            ),
            Tab(
              text: "蔬菜2",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text("热销1"),
          ),
          Center(
            child: Text("热销2"),
          ),
        ],
      ),
    );
  }
}
