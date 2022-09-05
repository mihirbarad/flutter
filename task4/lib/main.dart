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
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.car_crash,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Car",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.pedal_bike_sharp,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Bicycle",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.directions_boat,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("BOat",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.bus_alert,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Bus",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.train,
                        size: 50,
                        color: Color.fromARGB(255, 165, 165, 165),
                      ),
                      Text("Train",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.directions_walk,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Walk",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.block_sharp,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Arrent",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.mail_rounded,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Brouilons",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.tv,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("DVR",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.copyright,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Copyright",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.cloud_off_rounded,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Nuage",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Icon(
                        Icons.alarm_add_sharp,
                        color: Color.fromARGB(255, 165, 165, 165),
                        size: 50,
                      ),
                      Text("Alarm",
                          style: TextStyle(
                              color: Color.fromARGB(255, 165, 165, 165),
                              fontSize: 18))
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
