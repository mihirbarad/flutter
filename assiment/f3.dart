//3. Write a program to make a square and cube of number.

import 'dart:io';

main() {
  var num1;
  print("Enter Your square Number");
  num1 = int.parse(stdin.readLineSync()!);
  var num2;
  print("Enter Your  cube Number");
  num2 = int.parse(stdin.readLineSync()!);

  print("Your square is ${num1 = num1 * num1}");
  print("Your cube is ${num2 = num2 * num2 * num2}");
}
