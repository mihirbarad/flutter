import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

String? num;

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 200),
              margin: EdgeInsets.all(30),
              child: TextFormField(
                  controller: numbercontroller,
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 86, 73, 72),
                        width: 2.0,
                      ),
                    ),
                  )),
            ),
            ElevatedButton(
                onPressed: () {
                  num = numbercontroller.text;
                  print(numbercontroller.text);
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}

// void ganret() {
//   Random random = new Random();
//   int randomNumber = random.nextInt(100);
//   print(randomNumber);
//   if (randomNumber > num) {}
// }
