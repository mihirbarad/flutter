import 'dart:io';

main() {
  var year;

  print("enter your month number");
  year = int.parse(stdin.readLineSync()!);

  print("your year is ${year / 12}");
}
