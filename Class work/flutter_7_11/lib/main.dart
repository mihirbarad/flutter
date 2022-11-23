import 'package:flutter/material.dart';
import 'package:flutter_7_11/MyHomePage.dart';
import 'package:flutter_7_11/mymaindb.dart';

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
        
       
        home: Mymaindb());
  }
}
