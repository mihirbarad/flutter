//11. Write a Program to check the given year is leap year or not.

import 'dart:io';

main() {
  int year;
  print("Enter a year: ");
  year = int.parse(stdin.readLineSync()!);

  if (year % 400 == 0) {
    print("is a leap year. $year");
  } else if (year % 100 == 0) {
    print(" is not a leap year.$year");
  } else if (year % 4 == 0) {
    print(" is a leap year. $year");
  } else {
    print("is not a leap year. $year");
  }
}
