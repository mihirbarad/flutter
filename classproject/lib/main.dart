import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Row(
          children: [
            Expanded(
              child: Text("Andoroid",
                  style: TextStyle(fontSize: 80, color: Colors.blue)),
            ),
            Expanded(
                child: Text("mihirbarad",
                    style: TextStyle(fontSize: 80, color: Colors.amber))),
          ],
        )),
      ),
    );
  }
}
