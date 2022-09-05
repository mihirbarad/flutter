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
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.car_crash,
                        size: 50,
                      ),
                      Text("Car",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.pedal_bike_sharp,
                        size: 50,
                      ),
                      Text("Bicycle",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.directions_boat,
                        size: 50,
                      ),
                      Text("BOat",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.bus_alert,
                        size: 50,
                      ),
                      Text("Bus",
                          style: TextStyle(color: Colors.black, fontSize: 18))
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
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.train,
                        size: 50,
                      ),
                      Text("Train",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.directions_walk,
                        size: 50,
                      ),
                      Text("Walk",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.block_sharp,
                        size: 50,
                      ),
                      Text("Arrent",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.mail_rounded,
                        size: 50,
                      ),
                      Text("Brouilons",
                          style: TextStyle(color: Colors.black, fontSize: 18))
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
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.tv,
                        size: 50,
                      ),
                      Text("DVR",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.copyright,
                        size: 50,
                      ),
                      Text("Copyright",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.cloud_off_rounded,
                        size: 50,
                      ),
                      Text("Nuage",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                  SizedBox(width: 30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 255, 170, 0),
                    child: Column(children: [
                      Icon(
                        Icons.alarm_add_sharp,
                        size: 50,
                      ),
                      Text("Alarm",
                          style: TextStyle(color: Colors.black, fontSize: 18))
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
