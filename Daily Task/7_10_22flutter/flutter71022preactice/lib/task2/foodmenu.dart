import 'package:flutter/material.dart';

class foodmenu extends StatefulWidget {
  foodmenu({Key? key}) : super(key: key);

  @override
  State<foodmenu> createState() => _profileState();
}

class _profileState extends State<foodmenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
          title: Text(
            "Unlimited Items & Price",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 173, 68, 7),
            ),
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chines",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
              Text(
                "₹150",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Gujarati",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
              Text(
                "₹99",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "South-Indian",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
              Text(
                "₹80",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Non-veg",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
              Text(
                "₹350",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ice cream",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
              Text(
                "₹250",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 98, 56),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
