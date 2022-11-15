import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modual/q4.dart';

class q3 extends StatefulWidget {
  const q3({Key? key}) : super(key: key);

  @override
  _q3State createState() => _q3State();
}

class _q3State extends State<q3> {
  int number = 0;
  String msg = '0';
  void increment() {
    number = number + 1;
  }

  void decrement() {
    number = number - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Q3"),
        backgroundColor: Color.fromARGB(255, 76, 144, 175),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Flutter "),
                      content: Text(
                        "$msg",
                        style: TextStyle(fontSize: 18),
                      ),
                      actions: <Widget>[
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (number >= 0) {
                                  msg = "Number Is positive";
                                } else {
                                  msg = "Number Is Nagative ";
                                }
                                increment();
                              });
                            },
                            icon: Icon(Icons.plus_one)),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (number < -1) {
                                  msg = "Number Is Nagative ";
                                }
                                decrement();
                              });
                            },
                            icon: Icon(Icons.minimize)),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Back"))
                      ],
                    ),
                  );
                },
                child: const Text(" Click and show "),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => q4(),
                    ));
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
