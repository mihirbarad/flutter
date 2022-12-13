import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:topsBudget/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
    });
  }
}
