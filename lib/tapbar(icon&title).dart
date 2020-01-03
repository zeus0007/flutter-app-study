import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Choice {
  Choice(this.text, this.icon);
  final String text;
  final IconData icon;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '화면 이동', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  final choices = [
    Choice('PLANE', Icons.flight),
    Choice('CAR', Icons.directions_car),
    Choice('BIKE', Icons.directions_bike),
    Choice('BOAT', Icons.directions_boat),
    Choice('BUS', Icons.directions_bus),
    Choice('TRAIN', Icons.directions_railway),
    Choice('WALK', Icons.directions_walk),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('교통 수단'),
          bottom: TabBar(
            tabs: choices.map((Choice choice) {
              return Tab(
                text: choice.text,
                icon: Icon(choice.icon),
              );
            }).toList(),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: choices.map((Choice choice) {
            return ChoiceCard(
              text: choice.text,
              icon: choice.icon,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.text, this.icon}) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display3;
    return Card(
      child: Column(
        children: <Widget>[
          Icon(icon, size: 128.0, color: textStyle.color),
          Text(text, style: textStyle),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      color: Colors.green,
      margin: EdgeInsets.all(12),
    );
  }
}
