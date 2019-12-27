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
      body: MyButton(),
    );
  }
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  var backColor = Colors.black;
  String path = "images/test_img1.jpg";
  String pathSea = "images/test_img1.jpg";
  String pathMountain = "images/test_img2.jpg";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset(path, fit: BoxFit.cover),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeButton('산', () => {path = pathMountain}),
                  makeButton('바다', () => {path = pathSea}),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }

  Widget makeButton(String title, VoidCallback callback) {
    return RaisedButton(
      child: Text(title),
      onPressed: () {
        setState(() {
          callback();
        });
      },
      textColor: Colors.white,
      color: backColor,
    );
  }
}
