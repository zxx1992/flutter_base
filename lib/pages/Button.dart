/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-10 15:44:06
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('按钮演示页面'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text('普通按钮'),
                    onPressed: () {
                      print('普通按钮');
                    },
                    color: Colors.blue,
                    hoverColor: Colors.pink,
                    textColor: Colors.white,
                    elevation: 20, //阴影
                    focusColor: Colors.red)
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 通过设置container组件的宽高，控制按钮的宽高
                Container(
                  height: 80,
                  // width: 300,
                  child: RaisedButton(
                    child: Text('设置按钮高度'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    // splashColor: Colors.purple,//长按，水泼纹
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.white)), //圆形按钮
                    elevation: 20,
                    onPressed: () {
                      print("设置高度按钮");
                    },
                  ),
                ),
                FlatButton(
                  child: Text('flat按钮'),
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: () {
                    print("flatButon");
                  },
                ),
                OutlineButton(
                  child: Text('OutlineButton按钮'),
                  textColor: Colors.black,
                  onPressed: () {
                    print("flatButon");
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 通过设置container组件的宽高，控制按钮的宽高
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    child: RaisedButton(
                      child: Text('自适应按钮'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      onPressed: () {
                        print("设置高度按钮");
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.all(20),
                    child: RaisedButton.icon(
                      //图标按钮
                      icon: Icon(Icons.search),
                      color: Colors.blue,
                      textColor: Colors.white,
                      label: Text('按钮图标'),
                      onPressed: () {
                        print("图标按钮");
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    OutlineButton(
                      child: Text('OutlineButton按钮1'),
                      textColor: Colors.black,
                      onPressed: () {
                        print("flatButon");
                      },
                    ),
                    OutlineButton(
                      child: Text('OutlineButton按钮2'),
                      textColor: Colors.black,
                      onPressed: () {
                        print("flatButon");
                      },
                    ),
                    MyButton(
                        text: "自定义按钮",
                        width: 30,
                        height: 100,
                        pressed: () {
                          print("1");
                        }),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

// 自定义按钮组件

class MyButton extends StatelessWidget {
  final text;
  final double height;
  final double width;
  final pressed;
  const MyButton(
      {this.text = '',
      this.width = 80,
      this.height = 30,
      this.pressed = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        onPressed: this.pressed,
        child: Text(this.text),
      ),
    );
  }
}
