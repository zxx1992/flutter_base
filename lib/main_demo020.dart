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
            appBar: AppBar(title: Text("Expended组件(flex布局）")),
            body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
//        Expanded(
//          flex: 1,
//          child: IconContainer(Icons.search, color: Colors.blue,),
//        ),
//        Expanded(
//          flex: 2,
//          child: IconContainer(Icons.home, color: Colors.greenAccent,),
//        ),
//      一侧固定宽度，另一侧自适应
        IconContainer(
          Icons.search,
          color: Colors.purple,
        ),
        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.home,
            color: Colors.greenAccent,
          ),
        ),
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
