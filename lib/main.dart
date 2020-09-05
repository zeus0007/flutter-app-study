import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/images2.jpg'),
              ),
              Text(
                'Kim Zeu',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade100,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                    leading: Icon(
                        Icons.phone,
                        color: Colors.teal),
                    title: Text(
                      '+82 10 7564 0545',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro'
                      ),
                    )
                )
              ),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                      leading: Icon(
                          Icons.email,
                          color: Colors.teal),
                      title: Text(
                        'wpdn79@naver.com',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro'
                        ),
                      )
                  )
              )
            ],
          ),
            ),
          ),
        );
  }
}
