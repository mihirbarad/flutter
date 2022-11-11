import 'dart:ui';

import 'package:flutter/material.dart';

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
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              cursorColor: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
