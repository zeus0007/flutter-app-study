import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: loadAsset('assets/2016_GDP.txt'),
        builder: (context, snapshot) {
          final contents = snapshot.data.toString();

          final rows = contents.split('\n');

          var tableRows = <TableRow>[];
          for (var row in rows) {
            var cols = row.split(':');

            if (cols.length != 3) continue;

            var widgets = cols.map((s) => Text(s));
            tableRows.add(TableRow(children: widgets.toList()));
          }
          return Table(children: tableRows);
        },
      ),
    );
  }

  Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}
