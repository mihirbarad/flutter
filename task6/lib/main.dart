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
          SizedBox(height: 25),
          Container(
              margin: EdgeInsets.all(10),
              height: 100,
              color: Color(0xFF2aa650)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(width: 5),
              Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  color: Color(0xFF58aae9)),
              SizedBox(width: 5),
              Container(
                  margin: EdgeInsets.all(10),
                  width: 250,
                  height: 100,
                  color: Color(0xFFe84e34)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  width: 380,
                  height: 400,
                  color: Color(0xFF8d43b4)),
            ],
          ),
          // Row(
          //   children: [
          //     Column(
          //       children: [
          //         Container(
          //             margin: EdgeInsets.all(10),
          //             width: 500,
          //             height: 300,
          //             color: Color(0xFF8d43b4)),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Container(
          //             margin: EdgeInsets.all(10),
          //             width: 300,
          //             height: 300,
          //             color: Color(0xFF2aa650)),
          //         Container(
          //             margin: EdgeInsets.all(10),
          //             width: 300,
          //             height: 300,
          //             color: Color(0xFF59aae8)),
          //       ],
          //     ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Container(
          //         margin: EdgeInsets.all(10),
          //         width: 300,
          //         height: 300,
          //         color: Color(0xFF8d43b4)),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Column(
          //       children: [
          //         Container(
          //             margin: EdgeInsets.all(10),
          //             width: 500,
          //             height: 300,
          //             color: Color(0xFF8d43b4)),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Container(
          //             margin: EdgeInsets.all(10),
          //             width: 300,
          //             height: 300,
          //             color: Color(0xFF2aa650)),
          //         Container(
          //             margin: EdgeInsets.all(10),
          //             width: 300,
          //             height: 300,
          //             color: Color(0xFF59aae8)),
          //       ],
          //     ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Container(
          //         margin: EdgeInsets.all(10),
          //         width: 300,
          //         height: 300,
          //         color: Color(0xFF8d43b4)),
          //   ],
          // ),
        ],
      )),
    );
  }
}
