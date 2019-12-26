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
        makeRow(
          'images/test_img1.jpg',
          'images/test_img2.jpg',
        ),
        makeRow('images/test_img3.jpg', 'images/test_img4.jpg')
      ],
    );
  }

  Widget makeRow(String leftPath, String rightPath) {
    return IntrinsicHeight(
      child: Row(children: <Widget>[
        makeExpandedImage(leftPath),
        makeExpandedImage(rightPath)
      ], crossAxisAlignment: CrossAxisAlignment.stretch),
    );
  }

  Widget makeExpandedImage(String imagePath) {
    return Expanded(
        child: Container(
            child: Image.asset(imagePath, fit: BoxFit.cover),
            margin: EdgeInsets.all(5.0)));
  }
}
