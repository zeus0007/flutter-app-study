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
    AppBar appBar = AppBar(
      title: Text('텍스트 입력'),
    );
    return Scaffold(
      appBar: appBar,
      body: InputSample(),
    );
  }
}

class InputSample extends StatefulWidget {
  @override
  _InputSampleState createState() => _InputSampleState();
}

class _InputSampleState extends State<InputSample> {
  String inputs = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              style: TextStyle(fontSize: 32, color: Colors.red),
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: '입력해 주세요'),
              onChanged: (String str) {
                setState(() => inputs = str);
              },
            ),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: 300,
          ),
          Container(
            child: Text(
              inputs,
              style: TextStyle(fontSize: 32),
              textAlign: TextAlign.center,
            ),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: 300,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
