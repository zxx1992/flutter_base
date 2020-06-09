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
            appBar: AppBar(title: Text("设置图片")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.network(
            'https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg@68w_68h.webp',
            alignment: Alignment.bottomRight,
            color: Colors.red,
            colorBlendMode: BlendMode.screen,
//            fit: BoxFit.cover,
        repeat: ImageRepeat.repeat,),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
      ),
    );
  }
}
