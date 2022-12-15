import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:topsBudget/Homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
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
                height: 20.h,
              ),
              Image.asset(
                'images/icons8-money-bag-96.png',
              ),
              Text(
                "Tops Budget",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(248, 141, 115, 29),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: TextFormField(
                  controller: nameController,
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
                      color: Color.fromARGB(248, 141, 115, 29),
                    ),

                    labelText: 'Full Name',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(248, 141, 115, 29),
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(248, 255, 219, 99), width: 1.0),
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
                  maxLength: 10,
                  keyboardType: TextInputType.number,
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
                      color: Color.fromARGB(248, 141, 115, 29),
                    ),

                    labelText: 'Mobile No',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(248, 141, 115, 29),
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
                    fillColor: Color.fromARGB(248, 141, 115, 29),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 23.h),
                child: Text(
                  "Create Account ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(248, 81, 66, 16),
                  ),
                ),
              ),
              SizedBox(
                height: 8.5.h,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));

                    Fluttertoast.showToast(
                        msg: 'Thanks For Login ',
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.blue,
                        webShowClose: false,
                        fontSize: 18,
                        timeInSecForIosWeb: 2,
                        toastLength: Toast.LENGTH_LONG);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 45),
                    primary: Color.fromARGB(248, 141, 115, 29),
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
