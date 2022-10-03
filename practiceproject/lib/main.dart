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
          //backgroundColor: Color.fromARGB(255, 198, 196, 187),
          appBar: AppBar(
            title: Text(
              "Calling Pad",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 251, 250, 250),
                fontWeight: FontWeight.bold,
              ),
            ),
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
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.only(left: 15, top: 50),
                margin: EdgeInsets.only(
                  top: 200,
                ),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(
                                height: 90,
                                width: 120,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 240, 237, 151)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 240, 237, 151))))),
                                  // style: TextButton.styleFrom(
                                  //     backgroundColor:
                                  //         Color.fromARGB(255, 240, 237, 151)),
                                )),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "*",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              height: 90,
                              width: 120,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "#",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 35, 0, 161)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 240, 237, 151)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 240, 237, 151))))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
