import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text("Welcome"),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarHeight: 120,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(10),
            child: Text("Homescreen",
                //textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.amber),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(60),
                  child: Text("Public",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 83, 231, 144)),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(60),
                  child: Text("Admin",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      // border: Border.all(
                      //     width: 3, color: Color.fromARGB(255, 86, 86, 84), ),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 83, 231, 144)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
