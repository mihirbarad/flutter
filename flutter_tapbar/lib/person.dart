import 'package:flutter/material.dart';

class person extends StatefulWidget {
  person({Key? key}) : super(key: key);

  @override
  State<person> createState() => _homeState();
}

class _homeState extends State<person> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Home")),
    );
  }
}
