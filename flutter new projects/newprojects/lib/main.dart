import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //backgroundColor: Color.fromARGB(255, 198, 196, 187),
          appBar: AppBar(
            title: Text(
              "welcome",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 251, 250, 250),
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 189, 163, 71),
          ),
          body: Container(
            color: Color.fromARGB(189, 247, 247, 167),

            //rpadding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                        Text(
                          "CALL",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.navigation_sharp, color: Colors.blue),
                        Text(
                          "ROUTE",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share, color: Colors.blue),
                        Text(
                          "SHARE",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Oeschinen Lake Campground",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Text("Kandersteg Swizerland",
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 136, 136),
                                fontSize: 15))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red),
                        Text("41",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
