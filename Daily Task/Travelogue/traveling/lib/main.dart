import 'dart:async';

import 'package:flutter/material.dart';

import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:traveling/fresh.dart';

import 'package:traveling/otherscreen/loginscreen.dart';

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
      home: PlaneIndicator(child: Text('sd')),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SplashScreenView(
      navigateRoute: Login(),
      duration: 5000,
      imageSize: 350,
      pageRouteTransition: PageRouteTransition.SlideTransition,
      imageSrc: "assets/traveling.png",
      text: "Travelogue",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 50.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    ));
  }
}
