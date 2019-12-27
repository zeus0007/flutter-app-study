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
      title: Text('버튼'),
    );
    return Scaffold(
      appBar: appBar,
      body: MyApp2(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('RaisedButton', style: TextStyle(fontSize: 24)),
            onPressed: () => showMessage('RaisedButton'),
          ),
          FlatButton(
            child: Text('FlatButton', style: TextStyle(fontSize: 24)),
            onPressed: () => showMessage('FlatButton'),
            color: Colors.green,
            textColor: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.print),
            onPressed: () => showMessage('IconButton'),
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => showMessage('FloatingActionButton'),
          ),
          InkWell(
            child: Text('InkWell', style: TextStyle(fontSize: 24)),
            onTap: () => showMessage('InkWell'),
          ),
          InkWell(
            child: Image.asset('images/.jpg', width: 120, height: 120),
            onTap: () => showMessage('ImageButton'),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }

  void showMessage(String msg) {
    final snackbar = SnackBar(content: Text(msg));

    Scaffold.of(ctx)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }
}
