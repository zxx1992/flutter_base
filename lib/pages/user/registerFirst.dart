/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-10 10:00:57
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("下一步")),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // 替换路由,直接用第二个页面替换第一个注册页面，所以点击返回，直接返回到setting页面
                // Navigator.of(context).pushReplacementNamed('/registerSecond');
                Navigator.pushNamed(context, '/registerSecond');
              },
              child: Text("下一步"),
            )
          ],
        ));
  }
}
