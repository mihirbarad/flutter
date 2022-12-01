import 'package:bugettracker/add_expens.dart';
import 'package:bugettracker/add_saving.dart';
import 'package:bugettracker/budget.dart';
import 'package:bugettracker/transacton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isShow = true;
  @override
  final centerTextStyle = const TextStyle(
    fontSize: 64,
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold,
  );

  late ValueNotifier<double> valueNotifier;

  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(0.0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
              height: 100,
            ),
            // SimpleCircularProgressBar(
            //   size: 120,
            //   progressStrokeWidth: 20,
            //   backStrokeWidth: 20,
            // ),
            Image.asset(
              'assets/money-bag.png',
              height: 150,
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: Add_listexpence(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 7.5,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Color.fromARGB(255, 215, 218, 222),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/chevron.png',
                      height: 30,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("My Expenes",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 54, 98)))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: add_saving(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 7.5,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Color.fromARGB(255, 215, 218, 222),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/piggy-bank.png',
                      height: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("My Savings",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 54, 98)))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: add_budget(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 7.5,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Color.fromARGB(255, 215, 218, 222),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/double-up-arrow.png',
                      height: 30,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("My Budget",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 54, 98)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Container(
      //     decoration: const BoxDecoration(
      //         gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       colors: [
      //         Color(0xff0d324d),
      //         Color(0xff7f5a83),
      //       ],
      //     )),
      //     alignment: Alignment.center,
      //     child: Column(
      //       children: [
      //         const SizedBox(
      //           height: 100,
      //         ),
      //         SimpleCircularProgressBar(
      //           size: 200,
      //           valueNotifier: valueNotifier,
      //           progressStrokeWidth: 24,
      //           backStrokeWidth: 24,
      //           mergeMode: true,
      //           onGetText: (value) {
      //             return Text(
      //               '${value.toInt()}',
      //               style: centerTextStyle,
      //             );
      //           },
      //           progressColors: const [Colors.cyan, Colors.purple],
      //           backColor: Colors.black.withOpacity(0.4),
      //         ),
      //         const SizedBox(
      //           height: 50,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(left: 40, right: 40),
      //           child: TextField(
      //             textAlign: TextAlign.center,
      //             keyboardType: TextInputType.number,
      //             keyboardAppearance: Brightness.dark,
      //             decoration: InputDecoration(
      //               filled: true,
      //               fillColor: Colors.black.withOpacity(0.4),
      //               hintText: 'Enter value (max 100)',
      //               hintStyle:
      //                   TextStyle(color: Colors.black.withOpacity(0.9)),
      //             ),
      //             style:
      //                 const TextStyle(fontSize: 25, color: Colors.white),
      //             onSubmitted: (inputText) {
      //               final double newValue = double.parse(inputText);

      //               // As soon as we change the value of the valueNotifier
      //               // parameter, the function ValueListenableBuilder within
      //               // SimpleCircularProgressBar is called.
      //               valueNotifier.value = newValue;
      //             },
      //           ),
      //         )
      //       ],
      //     )));
    );
  }

  // @override
  // void dispose() {
  //   valueNotifier.dispose();
  //   super.dispose();
  // }
}
