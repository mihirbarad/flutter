import 'package:flutter/material.dart';
import 'package:flutter71022preactice/10-10-22_practice.dart';
import 'package:flutter71022preactice/bottompage.dart';

import 'package:flutter71022preactice/homepage.dart';
import 'package:flutter71022preactice/task1.dart';
import 'package:flutter71022preactice/task2/login.dart';
import 'package:flutter71022preactice/task2/task2.dart';

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
      home: login(),
    );
  }
}
