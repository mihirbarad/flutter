import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 198, 196, 187),
          appBar: AppBar(
            title: Text(
              "Lets Go To Food ",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 251, 250, 250),
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.account_balance_wallet,
              size: 36,
            ),
            actions: <Widget>[
              //IconButton
              IconButton(
                icon: const Icon(Icons.chat, size: 30),
                tooltip: 'Setting Icon',
                onPressed: () {},
              ), //IconButton
            ],
            centerTitle: true,
            toolbarHeight: 90.2,
            elevation: 30,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            backgroundColor: Color.fromARGB(255, 189, 163, 71),
          ),
          body: SafeArea(
            child: Text(
              "Welcome ",
              style: TextStyle(
                color: Color.fromARGB(255, 139, 58, 58),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
