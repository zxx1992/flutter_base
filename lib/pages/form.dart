/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-09 16:03:37
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  List list;
  FormPage(
      {this.title = '默认值表单',
      this.list = const [
        {'title': "列表1"},
        {'title': "列表2"},
        {'title': "列表3"}
      ]});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            // 自定义按钮，返回上一个页面
            Navigator.of(context).pop();
          },
        ),
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value['title']),
            );
          }).toList(),
        ));
  }
}
