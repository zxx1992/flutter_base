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
            appBar: AppBar(title: Text("设置圆形图片——2")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: ClipOval(
            child:
//            Image.network('https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@68w_68h.webp',
            Image.asset("images/生物统计.png",//本地图片配置：2步（添加图片库，配置文件中配置地址）
              height: 100,
              width: 100,
              fit: BoxFit.cover,)
        ),
      ),
    );
  }
}
