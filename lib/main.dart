import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '연습',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('멀티 텍스트')),
      body: Column(
        children: <Widget>[
          makeRow('1', '2', '3'),
          makeRow('4', '5', '6'),
          makeRow('7', '8', '9'),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }

  Widget makeRow(String left, String middle, String right) {
    return Row(
        children: <Widget>[box(left), box(middle), box(right)],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly);
  }

  Widget box(String number) {
    return Container(
      child: Center(child: Text(number)),
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}
