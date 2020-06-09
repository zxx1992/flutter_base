import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Stack组件，设置位置")),
            body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(//整个容器居中
      child: Stack(//堆叠组件
//        alignment: Alignment.center,//文本位置
        alignment: Alignment(0,0),//自定义文本位置
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text("文本", style: TextStyle(
            fontSize: 24,
            color: Colors.white
          ),)
        ],
      ),
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
