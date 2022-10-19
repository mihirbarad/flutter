import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Share extends StatefulWidget {
  const Share({super.key});

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  var rendmstring;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Text(
            "Refer and Earn",
            style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 66, 24, 7),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 0,
          ),
          Image.asset('asset/gift.png'),
          Text(
            "Copy Code and Refer your friends\n             Get Wonderfull Gift",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 66, 24, 7),
                fontWeight: FontWeight.w600),
          ),
          Container(
              // height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 220, 218, 218),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    rendmstring = getRandomString(7),
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 66, 24, 7),
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () async {
                        print(rendmstring);
                        await Clipboard.setData(ClipboardData(
                          text: rendmstring,
                        ));
                      },
                      icon: Icon(Icons.copy)),
                ],
              )),
          Expanded(
            child: Container(
              child: Text(
                "You will Copy your code and share minimum 5 friends and gett wonderfull gift,CONNECT WITH FRIENDS.EARN Yammie “XANDER” IN-Food OUTFIT AND Food REWARDS. "
                    .toLowerCase(),
                softWrap: true,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 108, 36, 7),
                    fontWeight: FontWeight.w500),
              ),
              height: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(100, 255, 204, 128)),
            ),
          ),
        ],
      ),
    );
  }
}

String getRandomString(int length) {
  const characters =
      '123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random random = Random();

  return String.fromCharCodes(Iterable.generate(
      length, (_) => characters.codeUnitAt(random.nextInt(characters.length))));
}
