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
  String id = '';
  String pw = '';
  BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Center(
      child: Column(
        children: <Widget>[
          makeRow('아이디'),
          makeRow('비밀번호'),
          RaisedButton(
            child: Text('로그인'),
            onPressed: () {
              if (id == "zeus") {
                if (pw == "1111") {
                  setState(() {
                    id = '';
                    pw = '';
                  });
                  showMessage('로그인 되었습니다.');
                } else {
                  showMessage('비밀번호가 틀렸습니다.');
                }
              } else {
                showMessage('아이디가 틀렸습니다.');
              }
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }

  Widget makeRow(String type) {
    return Row(
      children: <Widget>[
        Container(
          child: Text(
            type,
            style: TextStyle(fontSize: 25, backgroundColor: Colors.green),
          ),
          width: 100,
        ),
        textfiled(type),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  Widget textfiled(String field) {
    return Container(
      child: TextField(
        obscureText: field == '비밀번호' ? true : false,
        style: TextStyle(fontSize: 25),
        controller: TextEditingController(),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
        ),
        onChanged: (String str) {
          if (field == '아이디') {
            setState(() => id = str);
          } else {
            setState(() => pw = str);
          }
        },
      ),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      margin: EdgeInsets.only(left: 30),
      width: 200,
      height: 80,
    );
  }

  void showMessage(String msg) {
    final snackbar = SnackBar(content: Text(msg));

    Scaffold.of(ctx)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }
}
