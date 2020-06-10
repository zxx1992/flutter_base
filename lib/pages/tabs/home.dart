/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 14:47:41
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

import '../product.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      ],
    );
  }
}
