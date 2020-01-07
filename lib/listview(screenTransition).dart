import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/semantics.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class PageInfo {
  PageInfo(this.image, this.title, this.group);

  String image;
  String title;
  String group;
}

class MyApp extends StatelessWidget {
  final infos = [
    PageInfo('images/test_img1.jpg', '테스트 이미지 원', '장소1'),
    PageInfo('images/test_img2.jpg', '테스트 이미지 원', '장소2'),
    PageInfo('images/test_img3.jpg', '테스트 이미지 원', '장소3'),
    PageInfo('images/test_img4.jpg', '테스트 이미지 원', '장소4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('리스트뷰 페이지 이동')),
      body: ListView(
        itemExtent: 120,
        children: infos.map((info) => makeRowItem(context, info)).toList(),
      ),
    );
  }

  Widget makeRowItem(BuildContext ctx, PageInfo info) {
    return Center(
      child: Container(
        color: Colors.lightBlue[100],
        child: ListTile(
          leading: Image.asset(info.image,
              width: 100, height: 100, fit: BoxFit.cover),
          title: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  info.title,
                  style: TextStyle(fontSize: 19, color: Colors.blueGrey),
                ),
              ),
              Container(
                child: Text(
                  info.group,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(
                ctx,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => Detail(info: info)));
          },
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({Key key, this.info}) : super(key: key);
  final PageInfo info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(info.group)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  info.title,
                  style: TextStyle(fontSize: 21.0, color: Colors.black87),
                ),
              ),
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: Image.asset(info.image, fit: BoxFit.contain),
              padding: EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
    );
  }
}
