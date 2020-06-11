/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-11 09:03:00
 * @Description: Textfield 表单
 */
import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  // 用户名
  var _username = new TextEditingController(); // 初始化的时候给表单赋值
  // 密码

  var _password;
  // 初始化状态
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEXT'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: TextDemo(),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "请输入用户名"),
              controller: _username,
              onChanged: (value) {
                // 这里不用setstate也可以
                // _username.text = value;
                setState(() {
                  _username.text = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,//代表密码
              decoration: InputDecoration(hintText: "密码"),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            Container(
              width: double.infinity, //按钮宽度，全屏
              child: RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  print(this._username.text);
                  print(this._password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatefulWidget {
  TextDemo({Key key}) : super(key: key);

  @override
  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: "请输入搜索的内容", border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        TextField(
          maxLines: 2,
          decoration:
              InputDecoration(hintText: "多行文本框", border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true, //密码框
          decoration:
              InputDecoration(hintText: "密码框", border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        TextField(
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: "用户名"),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true, //密码框
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              border: OutlineInputBorder(),
              labelText: "密码",
              labelStyle: TextStyle(fontSize: 24, color: Colors.blue)),
        )
      ],
    );
  }
}
