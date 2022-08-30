import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          title: Text(
            "Welcome",
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 251, 250, 250),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 189, 163, 71),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Welcome to Food Delliver System"),
              ],
            )));
  }
}
