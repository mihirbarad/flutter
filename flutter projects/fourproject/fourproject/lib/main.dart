import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 196, 187),
      appBar: AppBar(
        title: Text(
          "Welcome ",
          style: TextStyle(
            color: Color.fromARGB(255, 139, 58, 58),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.food_bank,
          color: Color.fromARGB(255, 198, 196, 187),
          size: 50,
        ),
        backgroundColor: Color.fromARGB(255, 189, 163, 71),
      ),
      body: Center(
        child: Text(
          "Lets go to food ",
          style: TextStyle(
            color: Color.fromARGB(255, 139, 58, 58),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }
}
