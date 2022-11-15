import 'package:flutter/material.dart';
import 'package:flutter_modual/q3.dart';

class q2 extends StatefulWidget {
  const q2({Key? key}) : super(key: key);

  @override
  _q2State createState() => _q2State();
}

class _q2State extends State<q2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Q2"),
        backgroundColor: Color.fromARGB(255, 76, 144, 175),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("flutter tops modual"),
                      content: const Text("alert Box in flutter "),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            color: Color.fromARGB(255, 243, 243, 243),
                            padding: const EdgeInsets.all(14),
                            child: const Text("okay"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(" Click and show "),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => q3(),
                      ));
                },
                child: const Text("Next Q3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
