import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              systemOverlayStyle: SystemUiOverlayStyle.light,
              title: Text(
                "BCA FoodWala",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 251, 250, 250),
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Color.fromARGB(255, 189, 163, 71),
            ),
            body: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Color.fromARGB(255, 189, 163, 71),
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          print("App is run");
                        },
                        child: Text("Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 80, 15, 11),
                                fontSize: 30)),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 189, 163, 71),
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          print("App is run");
                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 80, 15, 11),
                                fontSize: 30)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Version 2.0",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            )));
  }
}
