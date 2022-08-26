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
            centerTitle: true,
            toolbarHeight: 90.2,
            elevation: 30,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            backgroundColor: Color.fromARGB(255, 189, 163, 71),
          ),
          body: Center(
            child: Text("Welcome"),
          ),
        ));
  }
}
