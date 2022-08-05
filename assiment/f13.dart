//13. Write a program to find the Max number from the given three number using Nested If
import 'dart:io';

/***********
 num1=10
  num2=20
   num3=30
 */
main() {
  print("Enter first number");
  var num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number");

  var num2 = int.parse(stdin.readLineSync()!);
  print("Enter third number");
  var num3 = int.parse(stdin.readLineSync()!);






  

  
  if (num1 >= num2 && num1 >= num3)
    print("%.2f is the largest number.");

 
  if (num2 >= num1 && num2 >= num3)
    print("%.2f is the largest number.");

 
  if (num3 >= num1 && num3 >= num2)
    print("%.2f is the largest number.");

  return 0;
}

  // if (num1 > num3) {
  //   if (num1 > num2) {
  //     print("Number 1 max");
  //   } else {
  //     print("Number 2 max");
  //   }
  // } else {
  //   if (num1 > num2) {
  //     print("Number 1 max");
  //   } else if (num3 > num2) {
  //     print("number 3 is max");
  //   } else if (num3 > num1) {
  //     print("number 3 is max");
  //   } else {
  //     print("Number 2 max");
  //   }
  // }
}
