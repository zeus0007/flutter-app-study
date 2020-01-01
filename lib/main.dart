import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '화면 이동', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('첫 번째')),
      body: Center(
        child: RaisedButton(
          child: Text('두 번째 화면으로 이동', style: TextStyle(fontSize: 21)),
          color: Colors.blue,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute<void>(builder: (BuildContext context) {
              return Second();
            }));
          },
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('두 번째')),
      body: Center(
        child: RaisedButton(
          child: Text(
            '첫 화면으로 돌아가기',
            style: TextStyle(fontSize: 21),
          ),
          color: Colors.green,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
