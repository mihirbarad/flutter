import 'package:flutter/material.dart';
import 'package:flutter_class_work3092022/homepage.dart';
import 'package:flutter_class_work3092022/loginscreen.dart';
import 'package:flutter_class_work3092022/registerscree.dart';

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
        theme: ThemeData(),
        home: Homepage());
  }
}
