/*
 * @Author: zhengxiaoxiao
 * @Date: 2020-06-11 14:26:55
 * @Description: Do not edit
 */
import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学员登记系统'),
      ),
      body: System(),
    );
  }
}

class System extends StatefulWidget {
  System({Key key}) : super(key: key);

  @override
  _SystemState createState() => _SystemState();
}

class _SystemState extends State<System> {
  // 定义变量
  String username;
  var sex;
  String info = '';
  List hobby = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": true, "title": "写代码"},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];

    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]["title"]),
          Checkbox(
            value: this.hobby[i]["checked"],
            onChanged: (value) {
              setState(() {
                this.hobby[i]["checked"] = value;
              });
            },
          )
        ],
      ));
    }

    // return tempList.toList();
    // tempList = this.hobby.map((value) {
    //   let obj = Checkbox(
    //       value: value["checked"],
    //       onChanged: (val) {
    //         setState(() {
    //           value["checked"] = val;
    //         });
    //       });
    //   return obj;
    // });
    return tempList.toList();
  }

  void _sexChange(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          // 用户名
          TextField(
            decoration: InputDecoration(hintText: "请输入用户名"),
            // controller: ,
            onChanged: (value) {
              // 这里不用setstate也可以
              // _username.text = value;
              setState(() {
                this.username = value;
              });
            },
          ),

          // 性别
          Row(
            children: <Widget>[
              Text("男"),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: this._sexChange,
              ),
              SizedBox(
                width: 20,
              ),
              Text("女"),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: this._sexChange,
              ),
            ],
          ),

          // 爱好
          Row(
            children: this._getHobby(),
          ),
          SizedBox(height: 40),

          // 描述信息
          TextField(
            maxLines: 4,
            decoration:
                InputDecoration(hintText: "描述信息", border: OutlineInputBorder()),
            onChanged: (value) {
              setState(() {
                this.info = value;
              });
            },
          ),
          SizedBox(height: 40),
          Container(
            width: double.infinity,
            height: 40,
            child: RaisedButton(
              child: Text('提交信息'),
              onPressed: () {
                print(this.sex);
                print(this.username);
                print(this.hobby);
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
