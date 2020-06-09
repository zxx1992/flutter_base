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
            appBar: AppBar(title: Text("container and text 组件")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          '如果你想用Flutter开发app的话，你首先必须得会Dart。此教程由IT营大地老师录制，更新于2020年。教程前14讲是Dart基础，第15讲开始讲的是Flutter。视频中涉及的源码及课件下载地址请访问: https://www.itying.com/goods-1101.html',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 2,
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5,
          ),
        ),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
//          padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(20, 30, 50, 40),
        margin: EdgeInsets.all(40),
//        transform: Matrix4.translationValues(100, 0, 0),
//        transform: Matrix4.diagonal3Values(3,4,5),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}
