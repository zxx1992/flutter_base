/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-10 10:01:25
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二步")),
      body: Column(
        children: <Widget>[
          Text("注册第二步"),
          RaisedButton(
            child: Text('下一步'),
            onPressed: () {
              Navigator.pushNamed(context, '/registerThird');
              // Navigator.of(context).pushReplacementNamed('/registerThird');
            },
          )
        ],
      ),
    );
  }
}
