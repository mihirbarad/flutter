import 'package:flutter/material.dart';

class ColorConstants {
  static const kPrimaryColor = Color.fromARGB(255, 147, 88, 16);
  static const kSecondaryColor = Color.fromARGB(255, 154, 106, 46);
  static const kThirdSecondaryColor = Color.fromARGB(255, 235, 189, 134);
  static const kGravishBlueColor = Color.fromARGB(255, 236, 223, 208);

  static const Gradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 240, 203, 159),
      Color.fromARGB(255, 240, 203, 159),
      Color.fromARGB(255, 237, 149, 40),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    tileMode: TileMode.repeated,
  );
}
