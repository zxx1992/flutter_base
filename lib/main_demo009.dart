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
            appBar: AppBar(title: Text("列表组件-listView-添加其他组件")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network(
            "https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp"),
        Container(
          height: 20,
          child: Text(
            '标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          padding: EdgeInsets.all(20),
        ),
        Image.network(
            "https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp"),
        Image.network(
            "https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp"),
        Image.network(
            "https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp"),
        Image.network(
            "https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp"),
        Image.network(
            "https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp"),
        Image.network(
            "https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp"),
      ],
    );
  }
}
