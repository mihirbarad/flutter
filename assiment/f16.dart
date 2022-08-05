//16. Write a program user enter the 5 subjects mark. You have to make a total and find the percentage.
// percentage > 75 you have to print “Distinction” percentage > 60 and percentage <= 75 you have to
// print “First class” percentage >50 and percentage <= 60 you have to print “Second class” percentage >
// 35 and percentage <= 50 you have to print “Pass class” Otherwise print “Fail

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

  var total = subjects5 + subjects1 + subjects2 + subjects3 + subjects4;
  print("total is $total");

  percentage = total * 100 / 500;
  print("Your percentage is $percentage");

  if (percentage > 75) {
    print("You have Distinction");
  } else if (percentage <= 75 && percentage > 60) {
    print("You have first class");
  } else if (percentage <= 60 && percentage > 50) {
    print("You have second class");
  } else if (percentage <= 50 && percentage > 35) {
    print("You have pass class");
  } else {
    print("your are failed");
  }
}
