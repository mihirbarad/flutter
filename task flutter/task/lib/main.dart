import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Row/Col",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          backgroundColor: Color(0xFFE67E22),
        ),
        body: Column(
          children: [
            Container(
                width: double.maxFinite,
                //padding: EdgeInsets.all(10),
                height: 150,
                color: Color(0xFFE67E22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 0),
                        Text("Layout",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                        Row(
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(width: 30),
                            Text("Row",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(width: 30),
                            Icon(Icons.arrow_forward_outlined),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 0),
                        Text("Main Axis Alignment",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                        Row(
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(width: 30),
                            Text("Space\nAround",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(width: 30),
                            Icon(Icons.arrow_forward_outlined),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                width: double.maxFinite,
                //padding: EdgeInsets.all(10),
                height: 150,
                color: Color(0xFFE67E22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 0),
                        Text("Main Axis Size",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                        Row(
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(width: 30),
                            Text("Max",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(width: 30),
                            Icon(Icons.arrow_forward_outlined),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 0),
                        Text("Cross Axis Alignment",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                        Row(
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(width: 30),
                            Text("stretch",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(width: 30),
                            Icon(Icons.arrow_forward_outlined),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                width: double.maxFinite,
                //padding: EdgeInsets.all(10),
                height: 280,
                color: Color.fromARGB(255, 244, 255, 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.stars, size: 80),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.stars, size: 120),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.stars, size: 80),
                  ],
                )),
            Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(10),
                color: Color.fromARGB(255, 246, 246, 245),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.menu,
                            color: Color.fromARGB(255, 162, 124, 11)),
                        Text("Row/Col",
                            style: TextStyle(
                                color: Color.fromARGB(255, 162, 124, 11)))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.text_fields_outlined,
                            color: Color.fromARGB(255, 117, 116, 112)),
                        Text("Baseline",
                            style: TextStyle(
                                color: Color.fromARGB(255, 117, 116, 112)))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.copy_rounded,
                            color: Color.fromARGB(255, 117, 116, 112)),
                        Text("Stack",
                            style: TextStyle(
                                color: Color.fromARGB(255, 117, 116, 112)))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.menu_sharp,
                            color: Color.fromARGB(255, 117, 116, 112)),
                        Text("Expanded",
                            style: TextStyle(
                                color: Color.fromARGB(255, 117, 116, 112)))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.keyboard_double_arrow_up_sharp,
                            color: Color.fromARGB(255, 117, 116, 112)),
                        Text("Padding",
                            style: TextStyle(
                                color: Color.fromARGB(255, 117, 116, 112)))
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
