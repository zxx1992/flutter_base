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
            appBar: AppBar(title: Text("StatefulWidget组件")), body: HomePage()));
  }
}

// StatelessWidget: 无法改变页面数据，无状态组件
// class HomePage extends StatelessWidget {

//   int countNum = 0;
//   // 常量构造函数的属性必须为常量
//   // const HomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Text("${this.countNum}"),
//         RaisedButton(
//           child: Text('按钮'),
//           onPressed: () {
//             this.countNum++;
//             print(this.countNum);
//           },
//         )
//       ],
//     );
//   }
// }

// 有状态组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Chip(
          label: Text("${this.countNum}"),
        ),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() { //只有有状态组件里面有此方法
              this.countNum++;
            });
            print(this.countNum);
          },
        )
      ],
    );
  }
}
