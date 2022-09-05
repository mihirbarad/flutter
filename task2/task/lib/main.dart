import 'dart:html';

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
        appBar: AppBar(
          title: Text("Task 2"),
          backgroundColor: Color.fromARGB(255, 43, 156, 255),
        ),
        body: Column(
          children: [
            Container(
                height: 350,
                width: double.maxFinite,
                color: Color.fromARGB(255, 208, 223, 236),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 30),
                        Icon(Icons.shopping_cart, size: 80, color: Colors.blue),
                        SizedBox(width: 30),
                        Icon(Icons.shopping_cart_outlined,
                            size: 80, color: Colors.blue),
                        SizedBox(width: 30),
                        Icon(Icons.shopping_cart, size: 80, color: Colors.blue),
                        SizedBox(width: 30),
                        Icon(Icons.shopping_cart, size: 80, color: Colors.blue),
                        SizedBox(width: 30),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 30),
                        Icon(Icons.chat, size: 80, color: Color(0xFF6466fd)),
                        SizedBox(width: 30),
                        Icon(Icons.chat_outlined,
                            size: 80, color: Color(0xFF6466fd)),
                        SizedBox(width: 30),
                        Icon(Icons.chat, size: 80, color: Color(0xFF6466fd)),
                        SizedBox(width: 30),
                        Icon(Icons.chat, size: 80, color: Color(0xFF6466fd)),
                        SizedBox(width: 30),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 30),
                        Icon(Icons.masks, size: 80, color: Color(0xFF9a66ff)),
                        SizedBox(width: 30),
                        Icon(Icons.masks_outlined,
                            size: 80, color: Color(0xFF9a66ff)),
                        SizedBox(width: 30),
                        Icon(Icons.masks, size: 80, color: Color(0xFF9a66ff)),
                        SizedBox(width: 30),
                        Icon(Icons.masks, size: 80, color: Color(0xFF9a66ff)),
                        SizedBox(width: 30),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 30),
                        Icon(Icons.handshake,
                            size: 80, color: Color(0xFFc935fa)),
                        SizedBox(width: 30),
                        Icon(Icons.handshake_outlined,
                            size: 80, color: Color(0xFFc935fa)),
                        SizedBox(width: 30),
                        Icon(Icons.handshake,
                            size: 80, color: Color(0xFFc935fa)),
                        SizedBox(width: 30),
                        Icon(Icons.handshake,
                            size: 80, color: Color(0xFFc935fa)),
                        SizedBox(width: 30),
                      ],
                    ),
                  ],
                )),
            Container(
                height: 100,
                width: double.maxFinite,
                color: Color(0xFFd2d1fb),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Filed",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Outluned",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Rounded",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Sharp",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ]))
          ],
        ),
      ),
    );
  }
}
