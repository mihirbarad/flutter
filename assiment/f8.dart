// 8. Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered by
// user.

import 'dart:io';

main() {
  var subjects1;
  var subjects2;
  var subjects3;
  var subjects4;
  var subjects5;
  var percentage;
  print("Enter subject1 mark");
  subjects1 = int.parse(stdin.readLineSync()!);
  print("Enter subject2 mark");
  subjects2 = int.parse(stdin.readLineSync()!);
  print("Enter subject3 mark");
  subjects3 = int.parse(stdin.readLineSync()!);
  print("Enter subject4 mark");
  subjects4 = int.parse(stdin.readLineSync()!);
  print("Enter subject5 mark");
  subjects5 = int.parse(stdin.readLineSync()!);

  percentage =
      (subjects5 + subjects1 + subjects2 + subjects3 + subjects4) * 100 / 500;
  print("Your percentage is $percentage");
}
