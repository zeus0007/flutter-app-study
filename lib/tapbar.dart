import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() => runApp(MaterialApp(home: MyTabs()));

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('교통수단')),
      body: TabBarView(
        controller: controller,
        children: [Red(), Green(), Blue()],
      ),
      bottomNavigationBar: Container(
        child: TabBar(controller: controller, tabs: [
          Tab(icon: Icon(Icons.card_travel), text: '빨강'),
          Tab(icon: Icon(Icons.donut_small), text: '초록'),
          Tab(icon: Icon(Icons.table_chart), text: '파랑'),
        ]),
        color: Colors.blueGrey,
      ),
    );
  }
}

class Red extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.red);
  }
}

class Green extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('GREEN',
              style: TextStyle(fontSize: 31, color: Colors.white))),
      color: Colors.green,
      margin: EdgeInsets.all(6.0),
    );
  }
}

class Blue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(Icons.table_chart, size: 150, color: Colors.white),
      ),
      color: Colors.blue,
      margin: EdgeInsets.all(6.0),
    );
  }
}
