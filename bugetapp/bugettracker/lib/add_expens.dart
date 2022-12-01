import 'package:bugettracker/transacton.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Add_listexpence extends StatefulWidget {
  const Add_listexpence({super.key});

  @override
  State<Add_listexpence> createState() => _Add_listexpenceState();
}

class _Add_listexpenceState extends State<Add_listexpence> {
  var nameController = TextEditingController();
  var amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 0, 0, 0),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromARGB(255, 33, 149, 243),
            Color.fromARGB(255, 0, 0, 0),
          ],
        )),
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              "Add Your Expence",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(109, 8, 42, 87),
                    borderRadius: BorderRadius.circular(36)),
                child: TextFormField(
                  controller: nameController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Enter Your Expence',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(109, 8, 42, 87),
                    borderRadius: BorderRadius.circular(36)),
                child: TextFormField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  autocorrect: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Enter Amount',
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 40),
                primary: Color.fromARGB(255, 37, 57, 206),
                onPrimary: Colors.white,
                onSurface: Colors.grey,
              ),
              onPressed: () {
                print(nameController.text);
                print(amountController.text);

                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: MyExpense(
                      name: nameController.text.toString(),
                      number: amountController.text.toString(),
                    ),
                  ),
                );
                print('Pressed');
              },
            )
          ],
        ),
      ),
    );
  }
}
