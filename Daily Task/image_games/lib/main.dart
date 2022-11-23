import 'package:flutter/material.dart';
import 'package:image_games/homepage.dart';
import 'package:image_games/qustions/cri.dart';
import 'package:image_games/qustions/gameover.dart';
import 'package:image_games/qustions/q1.dart';

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
      home: homepage(),
    );
  }
}
