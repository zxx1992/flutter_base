/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 17:37:39
 * @Description: Do not edit
 */

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("跳转"),
        ),
        body: Text("是从home页面222跳转过来的"));
  }
}
