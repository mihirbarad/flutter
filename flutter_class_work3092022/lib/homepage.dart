import 'package:flutter/material.dart';
import 'package:flutter_class_work3092022/firstscreen.dart';
import 'package:flutter_class_work3092022/loginscreen.dart';
import 'package:flutter_class_work3092022/registerscree.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 137, 245, 253),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 150),
              Text("Welcome to Food Meniya",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              SizedBox(height: 120),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => register()));
                },
                child: Text("Register"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 92, 16, 13)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 18))),
              ),
              SizedBox(height: 30),
              Text("Or",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: Text("  Login  "),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 92, 16, 13)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 18))),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
