import 'package:flutter/material.dart';
import 'package:traveler/screen/go.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TextFormField(
                    controller: cityController,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 189, 128, 93),
                      ),

                      labelText: 'City',
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 115, 68, 40),
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 173, 68, 7), width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      if (cityController == "bhavnagar") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => go()));
                      }
                      print(cityController);
                    },
                    child: Text(
                      "Go",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(60, 45),
                      primary: Color.fromARGB(255, 6, 136, 197),
                      // side: BorderSide(
                      //     color: Color.fromARGB(255, 6, 136, 197), width: 2),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.normal),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      shadowColor: Color.fromARGB(255, 6, 136, 197),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
