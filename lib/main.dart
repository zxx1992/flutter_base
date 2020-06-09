/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 15:17:09
 * @Description: Do not edit
 */
import 'package:demo001/pages/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/Tabs.dart';

// 导入路由跳转的页面
import 'pages/form.dart';
import 'pages/list.dart';
import 'pages/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/form': (context) => FormPage(),
    '/list': (context) => ListPage(),
    '/product': (context) => ProductPage(),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      //定义命名路由，统一管理
      routes: this.routes,
      // 代码直接从官网拿，可实现跳转传参
      // onGenerateRoute: ,
    );
  }
}
