import 'package:flutter/material.dart';
import 'package:flutter71022preactice/task2/task2.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool? valuefirst = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yummies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffc14b09),
                    ),
                  ),
                  Text(
                    "Food Delivery App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 115, 68, 40)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(175, 121, 85, 72),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              "________________________________________",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 77, 52, 43),
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                controller: nameController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 8, 5, 4),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 189, 128, 93),
                  ),

                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 115, 68, 40),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 173, 68, 7), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                controller: numberController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 189, 128, 93),
                  ),

                  labelText: 'Mobile',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 115, 68, 40),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 173, 68, 7), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Color.fromARGB(255, 255, 255, 255),
                    activeColor: Color.fromARGB(255, 0, 0, 0),
                    value: this.valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value;
                      });
                    },
                  ),
                  Text(
                    "Remember Me",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => task2(
                              name: nameController.text.toString(),
                              number: numberController.text.toString())));
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(220, 50),
                  primary: Color.fromARGB(255, 173, 68, 7),
                  side: BorderSide(
                      color: Color.fromARGB(255, 173, 68, 7), width: 2),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontStyle: FontStyle.normal),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  shadowColor: Color.fromARGB(255, 158, 94, 57),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "______________",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 168, 88, 42),
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "______________",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 168, 88, 42),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://logopng.com.br/logos/google-37.png'),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  radius: 20,
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.bGPD-oClhpU4utiky9MnxgHaHa?pid=ImgDet&rs=1'),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  radius: 25,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
