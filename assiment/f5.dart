//5. Write a program to find the Area of Triangle

import 'dart:io';

main() {
  var base;
  var height;
  print("Enter base number: ");
  base = int.parse(stdin.readLineSync()!);
  print("Enter height number: ");
  height = int.parse(stdin.readLineSync()!);
  var area = (base * height) / 2;
  print("Area of Triangle is $area");
}
