/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 14:49:49
 * @Description: 点击跳转传参
 */
import 'package:flutter/material.dart';
import '../form.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // 定义路由跳转传值
  String title = "我是跳转传值";
  List list = [
    {'title': "列表传参1"},
    {'title': "列表传参2"},
    {'title': "列表传参3"},
    {'title': "列表传参4"},
    {'title': "列表传参5"},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            // 点击跳转传参
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FormPage(title: this.title, list: this.list)));
          },
          child: Text("跳转到表单页面并传值"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
