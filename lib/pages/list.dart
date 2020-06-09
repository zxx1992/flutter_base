/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 15:51:20
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("跳转"),
        ),
        body: Text("是从home页面跳转过来的"));
  }
}
