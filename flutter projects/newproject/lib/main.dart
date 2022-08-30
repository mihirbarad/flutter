import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practiceproject/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController emailecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            //backgroundColor: Color.fromARGB(255, 198, 196, 187),
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              title: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 251, 250, 250),
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Color.fromARGB(255, 189, 163, 71),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    color: Color.fromARGB(255, 194, 192, 187),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.all(15),
                    child: TextFormField(
                      autocorrect: true,
                      controller: emailecontroller,
                      decoration: InputDecoration(
                        hintText: 'Email ',
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 194, 192, 187),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.all(15),
                    child: TextFormField(
                      autocorrect: true,
                      controller: passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password ',
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 189, 163, 71),
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {
                        controller:
                        emailecontroller.text;
                        print(emailecontroller);
                        controller:
                        passwordcontroller.text;
                        print(passwordcontroller);

                        var name = emailecontroller.text;
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Homescreen()));
                      },
                      child: Text("Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 80, 15, 11),
                              fontSize: 30)),
                    ),
                  ),
                  // Container(
                  //   color: Color.fromARGB(255, 189, 163, 71),
                  //   width: double.maxFinite,
                  //   alignment: Alignment.center,
                  //   margin: EdgeInsets.all(10),
                  //   child: TextButton(
                  //     onPressed: () {
                  //       print("App is run");
                  //     },
                  //     child: Text("Sign Up",
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             color: Color.fromARGB(255, 80, 15, 11),
                  //             fontSize: 30)),
                  //   ),
                  // ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Version 2.0",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  )
                ],
              ),
            )));
  }
}
