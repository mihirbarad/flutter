import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.maxFinite,
      color: Color.fromARGB(255, 0, 0, 0),
      child: Column(
        children: [
          Icon(Icons.person, size: 66, color: Colors.blueGrey),
          SizedBox(
            height: 30,
          ),
          Text(
            "My App",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "Abcde@gmail.com",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
