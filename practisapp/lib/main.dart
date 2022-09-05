import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practisapp/Homescreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: spelsh(),
    );
  }
}

class Loginpage extends StatefulWidget {
  Loginpage({Key? key}) : super(key: key);
  var name;

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 180,
            ),
            Text("Login Member",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 189, 163, 71),
                )),
            Text("for our Socity",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 189, 163, 71),
                )),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.all(15),
              child: TextFormField(
                autocorrect: true,
                controller: emailecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email ',
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.all(15),
              child: TextFormField(
                autocorrect: true,
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.key),
                  hintText: 'Password ',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                controller:
                emailecontroller.text;
                print(emailecontroller);
                controller:
                passwordcontroller.text;
                print(passwordcontroller);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Homescreen()));
              },
              style: TextButton.styleFrom(
                primary: Color.fromARGB(255, 38, 8, 8),
                elevation: 2,
                backgroundColor: Color.fromARGB(255, 189, 163, 71),
              ),
            ),
            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Homescreen()));
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text("SignUp Membership",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 189, 163, 71))),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_circle_right_rounded,
                        color: Color.fromARGB(255, 189, 163, 71))
                  ],
                ),
              ),
            ),
            // Container(
            //   color: Color.fromARGB(255, 189, 163, 71),
            //   width: 150,
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.all(10),
            //   child: TextButton(
            //     onPressed: () {
            //       setState(() {
            //         var name = emailecontroller.text;
            //       });
            //       controller:
            //       emailecontroller.text;
            //       print(emailecontroller);
            //       controller:
            //       passwordcontroller.text;
            //       print(passwordcontroller);

            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (BuildContext context) => Homescreen()));
            //     },
            //     child: Text(
            //       "Login",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           color: Color.fromARGB(255, 80, 15, 11),
            //           fontSize: 30),
            //     ),
            //   ),
            // ),

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
            SizedBox(height: MediaQuery.of(context).size.height / 6),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Version 1.0",
                style: TextStyle(
                    color: Color.fromARGB(255, 189, 163, 71), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class spelsh extends StatelessWidget {
  const spelsh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SplashScreenView(
      navigateRoute: Loginpage(),
      duration: 6000,
      backgroundColor: Color.fromARGB(255, 189, 163, 71),
      text: "Digital Socity ",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 40.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
