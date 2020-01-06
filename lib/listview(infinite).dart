import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  final rand_gen = Random(42);
  final words = [
    'ten',
    'day',
    'sky',
    'fat',
    'gym',
    'run',
    'ace',
    'red',
    'zen',
    'sun'
  ];

  String randomWord() => words[rand_gen.nextInt(words.length)];
  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('무한리필')),
      body: ListView.builder(itemBuilder: (context, index) {
        final first = capitalize(randomWord());
        final second = capitalize(randomWord());
        final disp_text = '$first $index $second';

        return ListTile(
          title: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: first + '  '),
                  TextSpan(
                    text: index.toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(text: '  ' + second),
                ],
              ),
            ),
          ),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext ctx) =>
                    AlertDialog(title: Text(disp_text)));
          },
        );
      }),
    );
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
