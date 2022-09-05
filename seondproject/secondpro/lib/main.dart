import 'dart:ui';

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
          drawer: Drawer(),
          appBar: AppBar(
            title: Text("Example"),
            backgroundColor: Color.fromARGB(255, 189, 163, 71),
          ),
          body: Container(
              child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                color: Color.fromARGB(255, 254, 239, 192),
                height: 100,
                width: double.maxFinite,
                alignment: Alignment.center,
                child: Text("Strawberry Pavlova",
                    style: TextStyle(color: Colors.black, fontSize: 50)),
              ),
              SizedBox(height: 10),
              Container(
                color: Color.fromARGB(255, 254, 239, 192),
                height: 150,
                width: double.maxFinite,
                alignment: Alignment.center,
                child: Text(
                    " Pavlona is a meringue-based \n dessert named after the Russian\n balience Anna Pavlona .\n Pavlona feture a crisp crust and\n soft light inside topped with fruit \n and whispped cream.",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
              SizedBox(height: 10),
              Container(
                  color: Color.fromARGB(255, 254, 239, 192),
                  height: 80,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                      ),
                      Icon(
                        Icons.star,
                      ),
                      Icon(
                        Icons.star,
                      ),
                      Icon(
                        Icons.star,
                      ),
                      Icon(
                        Icons.star,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("170 Reviews",
                          style: TextStyle(
                              color: Color.fromARGB(255, 131, 130, 130)))
                    ],
                  )),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                color: Color.fromARGB(255, 254, 239, 192),
                height: 100,
                width: double.maxFinite,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.content_paste, color: Colors.blue),
                            SizedBox(height: 10),
                            Text("PREP."),
                            SizedBox(height: 10),
                            Text("25 Min.")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.timer, color: Colors.blue),
                            SizedBox(height: 10),
                            Text("COOK."),
                            SizedBox(height: 10),
                            Text("1 hr")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.food_bank_outlined, color: Colors.blue),
                            SizedBox(height: 10),
                            Text("FEEDS."),
                            SizedBox(height: 10),
                            Text("4-6.")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
