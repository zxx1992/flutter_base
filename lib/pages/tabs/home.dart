/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 14:47:41
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;//引入http库
import 'dart:convert'; //map和json互换

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Map userInfo = {
      "username": "张三",
      "age": 20,
    };

    print(json.encode(userInfo)); // MAP  转为 String

    String username = '{"age":20}';

    print(json.decode(username)); // json 转为 Map
  }

  // 请求数据

  _getData() {
    var apiUrl = "";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      print(result.body);
    } else {
      print(result.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.pink[100],
              title: TabBar(
                  isScrollable: true, //左右滑动
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
        // get请求
        RaisedButton(
          onPressed: _getData,
          child: Text("get请求"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        // post请求
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            Navigator.pushNamed(context, '/formDemo');
          },
          child: Text("post请求"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            Navigator.pushNamed(context, '/formDemo');
          },
          child: Text("跳转到表单页面"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
