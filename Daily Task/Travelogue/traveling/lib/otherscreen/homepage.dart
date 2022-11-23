import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:traveling/otherscreen/letsgo.dart';

class homepage extends StatefulWidget {
  var nameforlogin = '';
  homepage({super.key, required this.nameforlogin});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(180), // Image radius
                child: Image.asset('assets/homepage.jpg', fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Container(
              margin: EdgeInsets.only(right: 90),
              child: Text(
                'Summer Trip',
                style: GoogleFonts.bungee(
                  fontSize: 38,
                  color: Color.fromARGB(255, 64, 77, 187),
                  textStyle: Theme.of(context).textTheme.headline6,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(right: 70),
              padding: EdgeInsets.all(20),
              child: Text(
                'summer break is a school break in summer between school years and the break in the school academic year',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Color.fromARGB(196, 103, 112, 195),
                  textStyle: Theme.of(context).textTheme.headline3,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.height / 3.5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            letsgo(loginname: widget.nameforlogin),
                      ));
                },
                child: Row(
                  children: [
                    Text(
                      "Let's Go!",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_right_alt_rounded)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(130, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
