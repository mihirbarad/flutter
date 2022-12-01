import 'package:bugettracker/home.dart';
import 'package:bugettracker/homepage.dart';
import 'package:bugettracker/transacton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: home(budget: '0'),
    );
  }
}
