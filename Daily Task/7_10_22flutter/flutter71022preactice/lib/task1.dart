import 'package:flutter/material.dart';

class task1 extends StatefulWidget {
  task1({Key? key}) : super(key: key);

  @override
  State<task1> createState() => _task1State();
}

class _task1State extends State<task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffbc01),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.menu,
                    size: 30,
                  )),
              SizedBox(
                width: 30,
              ),
              Text("FOOD",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 30,
              ),
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(25), // Image radius
                  child: Image.network(
                      'https://i.pinimg.com/736x/b9/d1/6f/b9d16f1583785518124e3f4574f4b728--circle-logo-design-circle-logos.jpg',
                      fit: BoxFit.cover),
                ),
              )
            ]),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width: 100,
                  padding: EdgeInsets.only(top: 5),
                  //margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFfef0bc),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Fast Food",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 35,
                  width: 100,
                  padding: EdgeInsets.only(top: 5),
                  //margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "chinese",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 35,
                  width: 100,
                  padding: EdgeInsets.only(right: 3, top: 5),
                  //margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFfef0bc),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Indian",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 2.5),
                Container(
                  height: 490,
                  width: 300,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Color.fromARGB(255, 95, 78, 17),
                          offset: Offset(1, 3))
                    ],
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text("Special Meal",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold)),
                      Text("chinese Food",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 170, 170, 170),
                              fontWeight: FontWeight.w400)),
                      Container(
                        // padding: EdgeInsets.all(1),
                        margin: EdgeInsets.all(1),
                        child: Image.asset(
                          'asset/food.png',
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.width / 0.3,
                          scale: 2.5,
                        ),
                      ),
                      Text("5.00",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Loremm lpsum is simply dummy text \n\tof the printing and typesetting",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 127, 127, 127),
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 35,
                        width: 80,
                        padding: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Color.fromARGB(255, 235, 189, 25),
                                  offset: Offset(1, 3))
                            ],
                            color: Color(0xFFffbc01),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text("Buy",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 455,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: Colors.white)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(".",
                      style: TextStyle(fontSize: 78, color: Colors.black)),
                  Text(".",
                      style: TextStyle(
                          fontSize: 78,
                          color: Color.fromARGB(255, 255, 255, 255))),
                  Text(".", style: TextStyle(fontSize: 78, color: Colors.black))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
