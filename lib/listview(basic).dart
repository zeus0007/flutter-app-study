import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('목록 보기')),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('지도'),
              onTap: () => _showDialog(context, '지도'),
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('사진'),
              onTap: () => _showDialog(context, '사진'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('전화'),
              enabled: false,
              onTap: () => _showDialog(context, '전화'),
            ),
          ],
        ));
  }

  void _showDialog(BuildContext context, String text) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text('선택 완료!'),
            content: Text('$text 항목을 선택했습니다.'),
          );
        });
  }
}
