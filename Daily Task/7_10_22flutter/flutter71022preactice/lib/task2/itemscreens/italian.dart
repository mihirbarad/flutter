import 'package:flutter/material.dart';

class italian extends StatefulWidget {
  italian({Key? key}) : super(key: key);

  @override
  State<italian> createState() => _italianState();
}

class _italianState extends State<italian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'asset/pngwing.com.png',
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}
