import 'package:flutter/material.dart';

class go extends StatefulWidget {
  const go({super.key});

  @override
  State<go> createState() => goState();
}

class goState extends State<go> {
  TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("THis Is bhavnagar")));
  }
}
