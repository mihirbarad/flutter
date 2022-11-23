import 'dart:math';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/services.dart';
import 'package:image_games/homepage.dart';
import 'package:image_games/qustions/all_confetti_widget.dart';

class gameover extends StatefulWidget {
  int? finalscore;
  gameover({super.key, @required this.finalscore});

  @override
  State<gameover> createState() => _homepageState();
}

class _homepageState extends State<gameover> {
  int? showscore;
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromARGB(255, 0, 18, 180),
      Colors.red,
      Color.fromARGB(255, 0, 18, 180),
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 70.0,
    );
    const colorTextStyle = TextStyle(
      fontSize: 50.0,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 0, 79),
      body: Column(
        children: [
          Stack(children: [
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Game Over',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 120),
                    child: Column(
                      children: [
                        Text(
                          'Congratulations',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 36, 215, 255)),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 12.2,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(173, 255, 255, 255),
                          ),
                          child: Center(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                ColorizeAnimatedText(
                                  'Score: ${widget.finalscore}',
                                  textStyle: colorTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: AllConfettiWidget(
                child: Text(''),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: AllConfettiWidget(
                child: Text(''),
              ),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ElevatedButton(
                //     onPressed: () {
                //
                //     },
                //     child: Text("Play Again")),
                ElevatedButton(
                  child: Text('Play Again'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homepage(),
                        ));
                  },
                ),

                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onHover: (value) {
                    Color.fromARGB(255, 51, 0, 0);
                  },
                  child: Text('Exit'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 3, 121, 109),
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
