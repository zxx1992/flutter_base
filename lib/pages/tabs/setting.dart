/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 14:49:37
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            // 通过自定义路由进行跳转
            Navigator.pushNamed(context, '/form');
          },
          child: Text("通过自定义路由进行跳转"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            // 通过自定义路由进行跳转
            Navigator.pushNamed(context, '/login');
          },
          child: Text("跳转到登录页面"),
        ),
        RaisedButton(
          onPressed: () {
            //点击路由跳转
            // 通过自定义路由进行跳转
            Navigator.pushNamed(context, '/registerFirst');
          },
          child: Text("跳转到注册页面"),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/appBarDemo');
          },
          child: Text("跳转到Appbbar页面"),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/tabBarController');
          },
          child: Text("跳转到tabBarController页面"),
        ),
      ],
    );
  }
}
