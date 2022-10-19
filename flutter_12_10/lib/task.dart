import 'package:flutter/material.dart';

class task extends StatefulWidget {
  task({Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  String? result = 'result';
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 13, 19, 88),
                          Color.fromARGB(255, 61, 134, 208),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                      )),
                ),
                Container(
                  height: 340,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: RadialGradient(colors: [
                        Color.fromARGB(255, 237, 0, 0),
                        Color.fromARGB(255, 8, 17, 119),
                      ], radius: 0.8)),
                ),
                Container(
                  height: 340,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: SweepGradient(
                        colors: [
                          Color.fromARGB(255, 0, 118, 237),
                          Color.fromARGB(255, 8, 17, 119),
                          Colors.amber,
                          Colors.green,
                          Color.fromARGB(255, 255, 0, 251),
                          Color.fromARGB(255, 180, 111, 0)
                        ],
                      )),
                ),
                Container(
                  height: 340,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 189, 145, 12),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 218, 198, 136),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(5, 5)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
