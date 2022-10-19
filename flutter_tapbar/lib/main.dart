import 'package:flutter/material.dart';
import 'package:flutter_tapbar/home.dart';
import 'package:flutter_tapbar/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Tab bar example"),
                bottom: TabBar(
                  indicatorColor: Colors.amber,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.abc),
                      text: 'Home',
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                      text: 'person',
                    ),
                  ],
                ),
              ),
              body: TabBarView(children: [
                home(),
                person(),
              ]),
            )));
  }
}
