import 'package:flutter/material.dart';
import 'package:flutter71022preactice/homepage.dart';

class practice extends StatefulWidget {
  practice({
    Key? key,
  }) : super(key: key);

  @override
  State<practice> createState() => practiceState();
}

class practiceState extends State<practice> {
  TextEditingController numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: numbercontroller,
            decoration: InputDecoration(hintText: 'enter number'),
          ),
          ElevatedButton(
              onPressed: () {
                print(numbercontroller.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homepage(
                              number: numbercontroller.text.toString(),
                            )));
              },
              child: Text("Click")),
        ],
      ),
    );
  }
}
