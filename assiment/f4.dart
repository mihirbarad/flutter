//4. Write a program to find the Area of Circle

import 'dart:io';

main() {
  final pi = 3.14;
  print("Enter numer:");
  var r = int.parse(stdin.readLineSync()!);

  var circle = pi * r * r;
  print("area of circle is $circle");
}
