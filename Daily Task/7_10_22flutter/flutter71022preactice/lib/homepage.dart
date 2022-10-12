import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  String? number;
  Homepage({Key? key, @required this.number}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: 0,
          children: [
            // Max Size Widget
            Container(
              height: 300,
              width: 400,
              color: Colors.green,
              child: Center(
                child: Text(
                  '${widget.number}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 40,
              child: Container(
                height: 100,
                width: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Middle Widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 13,
                left: 40,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Bottom Widget',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
