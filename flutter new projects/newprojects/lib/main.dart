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
            width: double.maxFinite,
            //rpadding: EdgeInsets.symmetric(horizontal: 30),
            child: Center(
                child: Text("Let's Go",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 107, 12, 12)))),
          ),
        ));
  }
}
