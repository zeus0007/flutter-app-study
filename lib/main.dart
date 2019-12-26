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
        body: MyButton());
  }
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  var backColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      child: Text('상태'),
      onPressed: () {
        setState(() {
          backColor =
              (backColor == Colors.black) ? Colors.lightBlue : Colors.black;
        });
      },
      textColor: Colors.white,
      color: backColor,
    ));
  }
}
