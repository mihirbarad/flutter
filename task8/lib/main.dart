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
      home: Scaffold(
          body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              Column(
                children: [
                  Container(
                      // margin: EdgeInsets.all(10),
                      width: 180,
                      height: 410,
                      color: Color(0xFF2aa650)),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                      // margin: EdgeInsets.all(10),
                      width: 200,
                      height: 100,
                      color: Color(0xFF59aae8)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      // margin: EdgeInsets.all(10),
                      width: 200,
                      height: 300,
                      color: Color(0xFFe84e34)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              // margin: EdgeInsets.all(10),
              width: 400,
              height: 350,
              color: Color(0xFF8d43b4)),
        ],
      )),
    );
  }
}
