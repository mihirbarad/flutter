import 'package:containeruse/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class adminlogin extends StatefulWidget {
  adminlogin({Key? key}) : super(key: key);

  @override
  State<adminlogin> createState() => _loginState();
}

class _loginState extends State<adminlogin> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Color.fromARGB(219, 255, 255, 255),
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 90),
          Text("Orange",
              style: TextStyle(
                  fontSize: 60,
                  color: Color.fromARGB(255, 212, 110, 42),
                  fontWeight: FontWeight.bold)),
          Text("SodaShop",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 212, 110, 42),
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 50),
          Container(
            child: Text("Admin Login",
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 152, 87, 26),
                    fontWeight: FontWeight.w600)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: Icon(Icons.person),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 58, 3, 3),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 220, 111, 38),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              controller: mobilecontroller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: "Mobile Number",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 58, 3, 3),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 220, 111, 38),
                    width: 2.0,
                  ),
                ),
              ),
              //   decoration: InputDecoration(
              //       fillColor: Color.fromARGB(255, 189, 100, 17),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //       prefixIcon: Icon(Icons.phone),
              //       labelText: 'Mobile Number'),
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: 50,
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 220, 111, 38),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                if (namecontroller.text == 'mihir' ||
                    mobilecontroller == '9033565474') {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => homepage(
                              name: namecontroller.text.toString(),
                              mobile: mobilecontroller.text.toString(),
                            )),
                  );
                }
              },
              child: Text("Login", style: TextStyle(fontSize: 20)),
            ),
          ),
        ]),
      ),
    );
  }
}
