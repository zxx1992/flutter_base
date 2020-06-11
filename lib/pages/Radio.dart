/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-11 11:37:41
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            RadioListTile(
              value: 1,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
              title: Text("标题"),
              secondary: Icon(Icons.help),
              selected: this.sex == 1,
            ),
            RadioListTile(
              value: 2,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
              title: Text("标题"),
              // secondary: Icon(Icons.help),
              secondary: Image.network(
                  'https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png'),
              selected: this.sex == 2,
            ),
            SizedBox(
              height: 40,
            ),
            Switch(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

// Radio 例子
class RadioDemos extends StatefulWidget {
  RadioDemos({Key key}) : super(key: key);

  @override
  _RadioDemosState createState() => _RadioDemosState();
}

class _RadioDemosState extends State<RadioDemos> {
  var sex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("男"),
            Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                }),
            Text("女"),
            Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                }),
            Text("未知"),
            Radio(
                value: 0,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                })
          ],
        ),
        Row(
          children: <Widget>[Text(this.sex == 1 ? "男" : "女")],
        ),
      ],
    );
  }
}
