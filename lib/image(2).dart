import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '연습', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('사진'),
        ),
        body: MyApp1());
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[getImg('url')],
        ),
      ],
    );
  }

  Widget getImg(String url) {
    return Image.asset(
      url,
      width: 400,
      height: 300,
      color: Colors.red,
      fit: BoxFit.fill,
      colorBlendMode: BlendMode.colorBurn,
    );
  }
}
