//10. Write a Program to check the given number is Positive, Negative.

import 'dart:io';

main() {
  var num1;

  print("enter your  number");

  num1 = int.parse(stdin.readLineSync()!);

  if (num1 < 0) {
    print("number is nagative");
  } else {
    print("number is positie");
  }
}
