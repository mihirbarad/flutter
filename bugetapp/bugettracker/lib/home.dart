import 'package:bugettracker/homepage.dart';
import 'package:bugettracker/transacton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class home extends StatefulWidget {
  var budget = '';
  home({super.key, required this.budget});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        backgroundColor: const Color.fromARGB(255, 223, 223, 226),
        elevation: 10,
        focusColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              duration: const Duration(seconds: 1),
              child: const Homepage(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 33, 149, 243),
              Color.fromARGB(255, 0, 0, 0),
            ],
          )),
          child: Column(children: [
            SizedBox(
              height: 120,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 1.11,
              child: Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 3,
                    lightSource: LightSource.topLeft,
                    color: Color.fromARGB(255, 228, 228, 228)),
                child: Center(
                  child: Text(
                    'Your Budget \n₹${widget.budget}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 55, 94),
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        // backgroundColor: Colors.greenAccent[200],
                        fontStyle: FontStyle.italic,
                        letterSpacing: 8,
                        wordSpacing: 10,
                        shadows: [
                          Shadow(
                              color: Colors.blueAccent,
                              offset: Offset(2, 1),
                              blurRadius: 7)
                        ]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.5,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: const Duration(seconds: 1),
                      child: MyExpense(
                        name: '',
                        number: '',
                      ),
                    ),
                  );
                },
                child: Text(
                  "Show All trasiction",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ))
          ])),
    );
  }
}
