//18. Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be
//Menu Driven)

import 'dart:io';

main() {
  print("enter first number :");
  var num1 = int.parse(stdin.readLineSync()!);
  print("enter second number :");
  var num2 = int.parse(stdin.readLineSync()!);
  print("1)Addition");
  print("2)Subtraction");
  print("3)Multiplication");
  print("4)Division");
  var ans = int.parse(stdin.readLineSync()!);

  switch (ans) {
    case 1:
      print("Your Addition ${num1 + num2}");
      break;
    case 2:
      print("Your Subtraction ${num1 - num2}");
      break;
    case 3:
      print("Your Multiplication ${num1 * num2}");
      break;
    case 4:
      print("Your Division ${num1 / num2}");
      break;
  }
}
