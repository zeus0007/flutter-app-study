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
  final choices = ['PLANE', 'CAR', 'BIKE', 'BOAT', 'BUS', 'TRAIN', 'WALK'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('교통 수단'),
          bottom: TabBar(
            tabs: choices.map((String choice) {
              return Tab(text: choice);
            }).toList(),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: choices.map((String choice) {
            return Center(
              child: Text(
                choice,
                style: TextStyle(fontSize: 31),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
