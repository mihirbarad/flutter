import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 120,
            color: Colors.black,
          ),
          Container(
            height: 120,
            color: Color.fromARGB(255, 255, 0, 0),
          ),
          Container(
            height: 120,
            color: Color.fromARGB(255, 216, 141, 141),
          ),
        ],
      ),
    );
  }
}
