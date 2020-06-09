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
                title: Text("Row,Column组件")
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
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child:
      Column(//水平，垂直布局
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//均匀分配
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconContainer(Icons.search, color: Colors.purple,),
          IconContainer(Icons.alarm, color: Colors.red,),
          IconContainer(Icons.ac_unit, color: Colors.greenAccent,),
//        IconContainer(Icons.clear, color: Colors.lightBlue,),
        ],
      ),
//      Row(//水平，垂直布局
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//均匀分配
//        children: <Widget>[
//          IconContainer(Icons.search, color: Colors.purple,),
//          IconContainer(Icons.alarm, color: Colors.red,),
//          IconContainer(Icons.ac_unit, color: Colors.greenAccent,),
////        IconContainer(Icons.clear, color: Colors.lightBlue,),
//        ],
//      ),
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
        child: Icon(this.icon, size: 32, color: Colors.yellow,),
      ),
    );
  }
}