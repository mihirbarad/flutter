import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:image_games/homepage.dart';
import 'package:image_games/qustions/q2.dart';
import 'package:simple_timer/simple_timer.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class q1 extends StatefulWidget {
  const q1({super.key});

  @override
  State<q1> createState() => _Guess1State();
}

class _Guess1State extends State<q1> {
  int r1 = 0;
  bool isLogoVisible = true;
  List _selectedIndexs = [];
  List qustion = [
    'A) Tops Technology',
    'B) Softrefine TEch',
    'C) Jolly TEch',
    'D) Hitech Technology',
  ];
  List score = [
    5,
    0,
    0,
    0,
  ];

  // instantiation

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      isLogoVisible = false;
      setState(() {});
    });
    Timer(const Duration(seconds: 8), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => q2(
                    r2: r1,
                  ))));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  SizedBox(
                    height: 60,
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Visibility(
                        visible: isLogoVisible,
                        child: Image.asset(
                          'assets/tops.jpeg',
                          fit: BoxFit.fill,
                        )),
                  ),

                  SizedBox(
                    height: 90,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final _isSelected = _selectedIndexs.contains(index);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              print(score[index]);

                              r1 = score[index].toInt();
                              if (_isSelected) {
                                _selectedIndexs.remove(index);

                                print("is selected");
                              } else {
                                _selectedIndexs.add(index);
                              }
                            });
                            print('-------> renk is -->$r1');
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 15, left: 30),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 1.3,
                            decoration: BoxDecoration(
                                color: _isSelected
                                    ? Colors.red
                                    : Colors.indigo[900],
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 20.0,
                                    spreadRadius: 1.0,
                                  )
                                ]),
                            child: Text(
                              qustion[index],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  //       Container(
                  //         margin: EdgeInsets.all(10),
                  //         padding: EdgeInsets.all(10),
                  //         height: MediaQuery.of(context).size.height / 15,
                  //         width: MediaQuery.of(context).size.width / 1.3,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(50),
                  //             gradient: new LinearGradient(colors: [
                  //               Color.fromARGB(255, 61, 51, 144),
                  //               Color.fromARGB(255, 44, 28, 167),
                  //             ]),
                  //             boxShadow: [
                  //               new BoxShadow(
                  //                 color: Colors.grey,
                  //                 blurRadius: 20.0,
                  //                 spreadRadius: 1.0,
                  //               )
                  //             ]),
                  //         child: Center(
                  //           child: Text(
                  //             "B) ER Technology",
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //                 fontSize: 20,
                  //                 color: Color.fromARGB(255, 255, 255, 255),
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.all(10),
                  //         padding: EdgeInsets.all(10),
                  //         height: MediaQuery.of(context).size.height / 15,
                  //         width: MediaQuery.of(context).size.width / 1.3,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(50),
                  //             gradient: new LinearGradient(colors: [
                  //               Color.fromARGB(255, 61, 51, 144),
                  //               Color.fromARGB(255, 44, 28, 167),
                  //             ]),
                  //             boxShadow: [
                  //               new BoxShadow(
                  //                 color: Colors.grey,
                  //                 blurRadius: 20.0,
                  //                 spreadRadius: 1.0,
                  //               )
                  //             ]),
                  //         child: Center(
                  //           child: Text(
                  //             "C) Softrefine",
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //                 fontSize: 20,
                  //                 color: Color.fromARGB(255, 255, 255, 255),
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.all(10),
                  //         padding: EdgeInsets.all(10),
                  //         height: MediaQuery.of(context).size.height / 15,
                  //         width: MediaQuery.of(context).size.width / 1.3,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(50),
                  //             gradient: new LinearGradient(colors: [
                  //               Color.fromARGB(255, 61, 51, 144),
                  //               Color.fromARGB(255, 44, 28, 167),
                  //             ]),
                  //             boxShadow: [
                  //               new BoxShadow(
                  //                 color: Colors.grey,
                  //                 blurRadius: 20.0,
                  //                 spreadRadius: 1.0,
                  //               )
                  //             ]),
                  //         child: Center(
                  //           child: Text(
                  //             "D) Tree Technology",
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //                 fontSize: 20,
                  //                 color: Color.fromARGB(255, 255, 255, 255),
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //     padding: const EdgeInsets.all(26),
                  //     decoration: const BoxDecoration(
                  //       gradient: LinearGradient(colors: [
                  //         Color.fromARGB(255, 92, 174, 242),
                  //         Color.fromARGB(255, 80, 232, 85)
                  //       ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  //     ),
                  //     child: Column(
                  //       children: [
                  //         SizedBox(
                  //           height: MediaQuery.of(context).size.height / 4,
                  //           child: Visibility(
                  //               visible: isLogoVisible,
                  //               child: Image.asset(
                  //                 'assets/marsicid.png',
                  //                 width: double.maxFinite,
                  //                 fit: BoxFit.fill,
                  //               )),
                  //         ),
                  //         SizedBox(
                  //           height: 22,
                  //         ),
                  //         Expanded(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               GestureDetector(
                  //                 onTap: () {},
                  //                 child: Container(
                  //                   alignment: Alignment.center,
                  //                   height: 50,
                  //                   width: 200,
                  //                   decoration: BoxDecoration(
                  //                     // ignore: prefer_const_constructors
                  //                     // ignore: prefer_const_literals_to_create_immutables
                  //                     // ignore: prefer_const_constructors
                  //                     gradient: LinearGradient(
                  //                         colors: const [
                  //                           Color.fromARGB(255, 92, 174, 242),
                  //                           Color.fromARGB(255, 68, 91, 243)
                  //                         ],
                  //                         begin: Alignment.topCenter,
                  //                         end: Alignment.bottomCenter),
                  //                     borderRadius: BorderRadius.circular(20),
                  //                   ),
                  //                   child: const Text(
                  //                     "A)   Pepsi",
                  //                     style: TextStyle(fontSize: 26, color: Colors.white),
                  //                   ),
                  //                 ),
                  //               ),
                  //               GestureDetector(
                  //                 onTap: () {},
                  //                 child: Container(
                  //                   alignment: Alignment.center,
                  //                   height: 50,
                  //                   width: 200,
                  //                   decoration: BoxDecoration(
                  //                     // ignore: prefer_const_constructors
                  //                     // ignore: prefer_const_literals_to_create_immutables
                  //                     // ignore: prefer_const_constructors
                  //                     gradient: LinearGradient(
                  //                         colors: const [
                  //                           Color.fromARGB(255, 92, 174, 242),
                  //                           Color.fromARGB(255, 68, 91, 243)
                  //                         ],
                  //                         begin: Alignment.topCenter,
                  //                         end: Alignment.bottomCenter),
                  //                     borderRadius: BorderRadius.circular(20),
                  //                   ),
                  //                   child: const Text(
                  //                     "B)   Mirinda",
                  //                     style: TextStyle(fontSize: 26, color: Colors.white),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 22,
                  //         ),
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             GestureDetector(
                  //               onTap: () {},
                  //               child: Container(
                  //                 alignment: Alignment.center,
                  //                 height: 50,
                  //                 width: 200,
                  //                 decoration: BoxDecoration(
                  //                   // ignore: prefer_const_constructors
                  //                   // ignore: prefer_const_literals_to_create_immutables
                  //                   // ignore: prefer_const_constructors
                  //                   gradient: LinearGradient(
                  //                       colors: const [
                  //                         Color.fromARGB(255, 92, 174, 242),
                  //                         Color.fromARGB(255, 68, 91, 243)
                  //                       ],
                  //                       begin: Alignment.topCenter,
                  //                       end: Alignment.bottomCenter),
                  //                   borderRadius: BorderRadius.circular(20),
                  //                 ),
                  //                 child: const Text(
                  //                   "C)   Red Bull",
                  //                   style: TextStyle(fontSize: 26, color: Colors.white),
                  //                 ),
                  //               ),
                  //             ),
                  //             GestureDetector(
                  //               onTap: () {},
                  //               child: Container(
                  //                 alignment: Alignment.center,
                  //                 height: 50,
                  //                 width: 200,
                  //                 decoration: BoxDecoration(
                  //                   // ignore: prefer_const_constructors
                  //                   // ignore: prefer_const_literals_to_create_immutables
                  //                   // ignore: prefer_const_constructors
                  //                   gradient: LinearGradient(
                  //                       colors: const [
                  //                         Color.fromARGB(255, 92, 174, 242),
                  //                         Color.fromARGB(255, 68, 91, 243)
                  //                       ],
                  //                       begin: Alignment.topCenter,
                  //                       end: Alignment.bottomCenter),
                  //                   borderRadius: BorderRadius.circular(20),
                  //                 ),
                  //                 child: const Text(
                  //                   "D)   Monster",
                  //                   style: TextStyle(fontSize: 26, color: Colors.white),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ],
                  //     )),
                ]))));
  }
}
