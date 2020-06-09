import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("列表组件-listView-水平，垂直布局")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      child: Lists(),
    );
  }
}
//列表数组
class Lists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ListView(
     scrollDirection: Axis.horizontal,//居中方式
     padding: EdgeInsets.all(10),
     children: <Widget>[
       Container(
         width: 180,
         color: Colors.red,
         child: Container(
           child: ListChild(),
         ),
         padding: EdgeInsets.all(20),
       ),
       Container(
         width: 180,
         color: Colors.orange,
         child: Text(
           '标题',
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 26,
           ),
         ),
         padding: EdgeInsets.all(20),
       ),
       Container(
         width: 180,
         color: Colors.green,
         child: Text(
           '标题',
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 26,
           ),
         ),
         padding: EdgeInsets.all(20),
       ),
     ],
   );
  }
  
}
//嵌套列表数组
class ListChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Image.network('https://i2.hdslb.com/bfs/archive/e306dfbb354d4e7c23d0bc7356182be771681f85.jpg@336w_190h.webp'),
        Text('我是一个文本')
      ],
    );
  }
}