/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-11 11:20:58
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (value) {
                  setState(() {
                    this.flag = value;
                  });
                },
                activeColor: Colors.pink,
              )
            ],
          ),
          Row(
            children: <Widget>[Text(this.flag ? "选中" : "未选中")],
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag = v;
              });
            },
            title: Text("标题"),
            subtitle: Text("二级标题"),
          )
        ],
      ),
    );
  }
}
