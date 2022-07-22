import 'dart:io';

main() {
  var month;
  var year;

  print("enter your year number");

  month = int.parse(stdin.readLineSync()!);
  print("enter your month number");
  year = int.parse(stdin.readLineSync()!);
  print("your months is ${month * 12}");
  print("your year is ${year / 12}");
}
