/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-10 10:19:47
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第三步")),
      body: Column(
        children: <Widget>[
          Text("注册第三步"),
          RaisedButton(
            child: Text('确定'),
            onPressed: () {
              // 返回到上一个页面
              // Navigator.of(context).pop();
              // 返回到根路由
              // Navigator.of(context).pushAndRemoveUntil(
              //   new MaterialPageRoute(builder: (context) => new Tabs()),
              //   (route) => route == null
              // );
              // 返回到指定页面
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                      builder: (context) => new Tabs(index: 1)),
                  (route) => route == null);
            },
          )
        ],
      ),
    );
  }
}
