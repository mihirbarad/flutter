import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Text("Ans = ${display()}",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)))
            ],
          ),
        ));
  }

  int display() {
    int num1, num2;
    num1 = 10;
    num2 = 20;
    return num1 + num2;
  }
}
