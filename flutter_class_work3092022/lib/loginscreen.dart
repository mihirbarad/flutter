import 'package:flutter/material.dart';
import 'package:flutter_class_work3092022/firstscreen.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                    hintText: "Enter Your name",
                    labelText: "Name",
                    prefix: Icon(Icons.person)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: emailecontroller,
                decoration: InputDecoration(
                    hintText: "Enter Your email",
                    labelText: "Email",
                    prefix: Icon(Icons.mail)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Firstscreen(
                                  name: namecontroller.text.toString(),
                                  email: emailecontroller.text.toString(),
                                )));
                  },
                  child: Text("Click now")),
            ),
          ],
        ));
  }
}
