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
            appBar: AppBar(
                title: Text("自定义按钮组件")
            ),
            body: LayoutDemo()
        )
    );
  }
}
class LayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new IconContainer(Icons.search, color: Colors.purple,);
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
        child: Icon(this.icon, size: 32, color: Colors.yellow,),
      ),
    );
  }
}