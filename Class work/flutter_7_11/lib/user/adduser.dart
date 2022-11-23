import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_7_11/service/service.dart';
import 'package:flutter_7_11/user/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  var nameController = TextEditingController();
  var contectController = TextEditingController();

  bool nameValidator = false;
  bool contectValidator = false;
  var usersevice = UserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add user"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              "Add User",
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
                errorText: nameValidator ? "field error " : null,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onTap: () {},
              cursorColor: Colors.brown,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: contectController,
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                errorStyle: TextStyle(
                  color: Colors.red,
                ),
                errorText: contectValidator ? "field error " : null,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onTap: () {},
              cursorColor: Colors.brown,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        //for validation we fecth details from conntroller and check is it empty or not
                        nameController.text.isEmpty
                            ? nameValidator = true
                            : nameValidator = false;
                        contectController.text.isEmpty
                            ? contectValidator = true
                            : contectValidator = false;
                      });

                      if (nameValidator == false && contectValidator == false) {
                        var user = User();
                        user.name = nameController.text;
                        user.contact = contectController.text;

                        var result = usersevice.saveData(user);

                        print(result);
                        print(nameController.text);
                        print(contectController.text);

                        Fluttertoast.showToast(
                          msg: 'Submited',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 2,
                          textColor: Colors.white,
                          backgroundColor: Colors.green,
                        );
                        Navigator.pop(context, result);
                      }
                    },
                    child: Text("Save Data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nameController.text = '';
                        contectController.text = '';
                        Fluttertoast.showToast(
                          msg: 'clear',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 2,
                          textColor: Colors.white,
                          backgroundColor: Colors.green,
                        );
                      });
                    },
                    child: Text("Clear")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
