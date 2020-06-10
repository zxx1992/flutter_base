/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-10 10:59:23
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //自定义appbar
    return DefaultTabController(
      length: 2, //顶部tab切换的数量
      child: Scaffold(
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.list),
            //   onPressed: () {
            //     print("xx");
            //   },
            // ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.help),
              )
            ],

            bottom: TabBar(
              tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")],
            ),
            title: Text("appbardemopage"),
            backgroundColor: Colors.pink,
          ),
          body: TabBarView(children: <Widget>[
            Text("first"),
            Text("second"),
          ])
    ));
  }
}
