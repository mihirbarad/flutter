import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter71022preactice/10-10-22_practice.dart';
import 'package:flutter71022preactice/bottompage.dart';

import 'package:flutter71022preactice/homepage.dart';
import 'package:flutter71022preactice/task1.dart';
import 'package:flutter71022preactice/task2/itemscreens/italian.dart';
import 'package:flutter71022preactice/task2/login.dart';
import 'package:flutter71022preactice/task2/task2.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: task1(),
    );
  }
}

class slepsh extends StatefulWidget {
  slepsh({Key? key}) : super(key: key);

  @override
  State<slepsh> createState() => _slepshState();
}

class _slepshState extends State<slepsh> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => login())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'asset/chines.png',
            height: 400,
          ),
          SizedBox(
            height: 30,
          ),
          SpinKitRipple(
            color: Color.fromARGB(255, 164, 66, 8),
            size: 120,
          )
        ],
      ),
    );
  }
}
