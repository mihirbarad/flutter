import 'package:flutter/material.dart';

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.military_tech_sharp,
                size: 40,
                color: Color.fromARGB(255, 234, 205, 182),
              ),
              SizedBox(
                width: 10,
              ),
              Text("TOPs Technology",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Color.fromARGB(255, 241, 205, 175),
                  )),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.military_tech_sharp,
                size: 40,
                color: Color.fromARGB(255, 241, 205, 175),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 9),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 123, 66, 20),
                  Color.fromARGB(255, 163, 107, 62)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              )),
          height: 200,
          width: double.maxFinite,
        ),
        SizedBox(height: 150),
        Text("Welcome \t\t\t\t",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 168, 103, 51),
            )),
        Text("\t\tTo",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 232, 161, 103),
            )),
        Text("\t\t\t\t\t\t\t\t\t\t\t\tOur Class",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 181, 111, 55),
            )),
        SizedBox(height: 170),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 130, 79, 37),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            SizedBox(width: 20),
            Text("Or",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(width: 20),
            ElevatedButton(
                onPressed: () {},
                child: Text("Register"),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 130, 79, 37),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ],
        ),
        SizedBox(height: 51),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 123, 66, 20),
                    Color.fromARGB(255, 163, 107, 62)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                )),
            child: Text("Version 1.0",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            height: 80,
            width: double.maxFinite,
          ),
        ),
      ],
    ));
  }
}
