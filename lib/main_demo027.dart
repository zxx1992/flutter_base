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
            appBar: AppBar(title: Text("card组件")), body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getData() {
//    List<Widget> list = new List();
//    for(var i =0;i<10;i++) {
//      list.add(
//        ListTile(
//          title: Text("$i",style: TextStyle(fontSize: 20,)),
//          subtitle: Text("高级工程师"),
//        )
//      );
//    }
//    return list;
    var tempList = listData.map((value) {
      return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.asset(value["imageUrl"], fit:BoxFit.cover),
            ),
            ListTile(
//              leading: ClipOval(
//                child: Image.asset(value["imageUrl"], fit:BoxFit.cover, width:60, height:60),
//              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i1.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@68w_68h.webp"),
              ),
              title: Text(value["title"],
                  style: TextStyle(
                    fontSize: 20,
                  )),
              subtitle: Text(value["author"],overflow: TextOverflow.ellipsis,maxLines: 2,),
            ),
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}
