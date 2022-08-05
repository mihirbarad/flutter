//2. Write a program to make addition, Subtraction, Multiplication and Division of Two Numbers.

import 'dart:io';

main() {
  var f1;
  var f2;

  print("enter your first number");
  f1 = int.parse(stdin.readLineSync()!);
  print("enter your second number");
  f2 = int.parse(stdin.readLineSync()!);
  print("your Sum is ${f1 + f2}");
  print("your min is ${f1 - f2}");
  print("your multi is ${f1 * f2}");
  print("your divi is ${f1 / f2}");
}
