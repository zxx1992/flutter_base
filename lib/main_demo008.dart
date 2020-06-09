import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("列表组件-listView")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Image.network('https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp'),//前面的图标
          title: Text('java',
              style: TextStyle(
                fontSize: 24,
              )),
          subtitle: Text('java sub'),
          trailing: Icon(Icons.alarm),//后面图标
        ),
        ListTile(
          title: Text('java'),
          subtitle: Text('java sub'),
        ),
        ListTile(
          title: Text('java'),
          subtitle: Text('java sub'),
        ),
        ListTile(
          title: Text('java'),
          subtitle: Text('java sub'),
        ),
        ListTile(
          title: Text('java'),
          subtitle: Text('java sub'),
        ),
      ],
    );
  }
}
