import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Expended组件(flex布局）,自适应用listview")),
            body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200,
                color: Colors.black,
                child: Text("xxx"),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.asset("images/2.0x/生物统计@2x.png", fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.asset("images/2.0x/生物统计@2x.png", fit: BoxFit.cover),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 85,
                      child: Image.asset("images/2.0x/生物统计@2x.png", fit: BoxFit.cover),
                    ),
                  ],
                )
              ),
            ),
          ],
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  //  定义参数,可设置默认值
  double size = 32;
  Color color = Colors.red;
  IconData icon;

//  构造函数，接受实例化后，传的参数
  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: 32,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
