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
    return GridView.count(
      padding: EdgeInsets.all(5.0),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      children: <Widget>[
        Image.asset('images/test_img1.jpg', fit: BoxFit.contain),
        Image.asset('images/test_img1.jpg', fit: BoxFit.fill),
        Image.asset('images/test_img1.jpg', fit: BoxFit.fitWidth),
        Image.asset('images/test_img1.jpg', fit: BoxFit.fitHeight),
        Image.asset('images/test_img1.jpg', fit: BoxFit.cover),
        Image.asset('images/test_img1.jpg', fit: BoxFit.none),
      ],
    );
  }
}
