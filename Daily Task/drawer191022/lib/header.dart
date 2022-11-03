import 'package:flutter/material.dart';

class header extends StatefulWidget {
  const header({super.key});

  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      color: Colors.amber,
      child: Container(
        margin: EdgeInsets.only(bottom: 30, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.percent,
              size: 56,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
