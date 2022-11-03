import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveler/screen/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 13,
              ),
              Image.asset(
                'assets/loginlogo.png',
                height: MediaQuery.of(context).size.height / 3,
              ),
              Text(
                "Travelogue",
                style: GoogleFonts.laBelleAurore(
                  textStyle: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(190, 7, 142, 252),
                      letterSpacing: .10),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 14, 69, 83),
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    //add prefix icon
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 93, 171, 189),
                    ),

                    labelText: 'Full Name',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 19, 160, 196),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 67, 211), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Color.fromARGB(255, 123, 246, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 14, 69, 83),
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    //add prefix icon
                    prefixIcon: Icon(
                      Icons.call,
                      color: Color.fromARGB(255, 93, 171, 189),
                    ),

                    labelText: 'Mobile No',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 19, 160, 196),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 67, 211), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Color.fromARGB(255, 123, 246, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Checkbox(
                      checkColor: Color.fromARGB(255, 50, 56, 57),
                      activeColor: Color.fromARGB(255, 123, 130, 132),
                      value: this.valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          valuefirst = value;
                        });
                      },
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 8, 33, 94),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 65, 66, 67).withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(5, 6),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 45),
                    primary: Color.fromARGB(255, 6, 136, 197),
                    // side: BorderSide(
                    //     color: Color.fromARGB(255, 6, 136, 197), width: 2),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.normal),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    shadowColor: Color.fromARGB(255, 6, 136, 197),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
