import 'package:flutter/material.dart';

class Firstscreen extends StatefulWidget {
  String? name;
  String? email;
  Firstscreen({Key? key, @required this.name, @required this.email})
      : super(
          key: key,
        );

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Data"),
      ),
      body: Container(
        width: double.maxFinite,
        color: Color.fromARGB(255, 191, 210, 226),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.name}",
                style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 106, 81, 10),
                    fontWeight: FontWeight.bold)),
            Text("${widget.email}",
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 125, 96, 15),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
