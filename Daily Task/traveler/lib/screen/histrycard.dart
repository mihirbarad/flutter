import 'package:flutter/material.dart';
import 'package:traveler/screen/colors.dart';
import 'package:traveler/screen/webview.dart';

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => cardState();
}

class cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /** Card Widget **/
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Color.fromARGB(255, 225, 168, 98),
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    foregroundColor: Color.fromARGB(176, 72, 73, 72),
                    backgroundColor: Color.fromARGB(176, 72, 73, 72),
                    radius: 108,
                    child: const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/history .png"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Bhavnagar',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 46, 4, 4),
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox

                  Text(
                    "Maharaja Shri Virbhadra Sinh Gohil (14 March 1932 – 26 July 1994) who succeeded as Maharaja of Bhavnagar. His son, Vijayrajsinhji Gohil, is the present Maharaja of Bhavnagar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 46, 6, 6),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  SizedBox(
                    width: 100,

                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => history(),
                            ));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 111, 55, 29))),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [
                            Icon(Icons.touch_app),
                            Text('Visit')
                          ],
                        ),
                      ),
                    ),
                    // RaisedButton is deprecated and should not be used
                    // Use ElevatedButton instead

                    // child: RaisedButton(
                    //   onPressed: () => null,
                    //   color: Colors.green,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(4.0),
                    //     child: Row(
                    //       children: const [
                    //         Icon(Icons.touch_app),
                    //         Text('Visit'),
                    //       ],
                    //     ), //Row
                    //   ), //Padding
                    // ), //RaisedButton
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ), //Center,
    );
  }
}
