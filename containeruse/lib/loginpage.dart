import 'package:containeruse/admin_login.dart';
import 'package:containeruse/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          SizedBox(height: 60),
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
          Container(
            margin: EdgeInsets.only(
              right: 180,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => adminlogin()),
                );
              },
              child: Text("Login as Administrator",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 152, 87, 26),
                      fontWeight: FontWeight.w600)),
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
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => homepage(
                            name: namecontroller.text.toString(),
                            mobile: mobilecontroller.text.toString(),
                          )),
                );
              },
              child: Text("Login", style: TextStyle(fontSize: 20)),
            ),
          ),
        ]),
      ),
    );
  }
}
