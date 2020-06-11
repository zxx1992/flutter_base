/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 14:47:41
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.pink[100],
              title: TabBar(
                  isScrollable: true,//左右滑动
                  indicatorColor: Colors.orange,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.lightGreen[300], //
                  unselectedLabelColor: Colors.white, //未选中label颜色
                  tabs: <Widget>[
                    Tab(text: "水果1"),
                    Tab(
                      text: "水果2",
                    ),
                    Tab(
                      text: "水果3",
                    ),
                    Tab(
                      text: "水果4",
                    ),
                    Tab(
                      text: "水果5",
                    ),
                    Tab(
                      text: "水果6",
                    ),
                    Tab(
                      text: "水果7",
                    ),
                    Tab(
                      text: "水果8",
                    ),
                    Tab(
                      text: "水果9",
                    ),
                    Tab(
                      text: "水果10",
                    ),
                  ])),
          body: Columns()),
    );
  }
}

// demo2

class TabsBar extends StatelessWidget {
  const TabsBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("FIRST")),
            ListTile(title: Text("SECOND")),
            ListTile(title: Text("THIRD")),
          ],
        ),
      ],
    );
  }
}

// demo1
class Columns extends StatelessWidget {
  const Columns({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => ListPage()));
            Navigator.pushNamed(context, '/list');
          },
          child: Text("跳转到列表页面"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            // 遗留问题，下面这种跳转会报错，说是找不到,重启解决了
            Navigator.pushNamed(context, '/product');
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => ProductPage()));
          },
          child: Text("跳转到商品页面"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            Navigator.pushNamed(context, '/formDemo');
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => ProductPage()));
          },
          child: Text("跳转到表单页面"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
