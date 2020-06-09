import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Wrap组件 流布局")), body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400,
      height: 600,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
        children: <Widget>[
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
          MyButton('保存按钮'),
        ],
      ),
    );
  }
}

//封装按钮

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
//      textColor: Colors.purple,
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
