import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'qustions/q1.dart';

class homepage extends StatefulWidget {
  homepage({
    super.key,
  });

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromARGB(255, 255, 255, 255),
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 0, 79),
      body: Container(
        child: Center(
            child: SizedBox(
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Lets Start Game',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print("Tap Event");
              _showCupertinoDialog();
            },
          ),
        )),
      ),
    );
  }

  void _showCupertinoDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('How To Play,'),
            content: Text(
                'Image Show Only 3 second, and Qustion Show Only 10 second \nBest Of luck'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold),
                  )),
              TextButton(
                onPressed: () {
                  print('play !');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => q1(),
                      ));
                },
                child: Text(
                  'Play ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
        });
  }
}
