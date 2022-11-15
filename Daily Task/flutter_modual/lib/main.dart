import 'package:flutter/material.dart';

import 'package:flutter_modual/q2.dart';
import 'package:flutter_modual/q5.dart';
import 'package:flutter_modual/q13.dart';
import 'package:flutter_modual/q8/screen.dart';

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
      home: q13(),
    );
  }
}
