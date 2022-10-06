import 'package:flutter/material.dart';
import 'package:numbergame/homepage.dart';
import 'dart:math';

void main() {
  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }

  print(random(5, 20)); // Output : 19, 5, 15.. (5 -> 19, 20 is not included)

  runApp(MyApp());
}

int? number;

int random=0;

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController numbercontroller = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Number game "),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              //width: 220,
              child: TextFormField(
                controller: numbercontroller,
                decoration: InputDecoration(
                  hintText: 'Enter your Number',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  number = numbercontroller.text;

                  if () {
                    print("Number is match");
                  } else {
                    print("Number is not match");
                  }
                },
                child: Text("Click here"))
          ],
        ),
      ),
    );
  }
}
