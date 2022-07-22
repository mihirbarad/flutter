import 'dart:io';

main() {
  var day;

  print("enter your day number");
  day = int.parse(stdin.readLineSync()!);
  print("your month is ${day / 30}");

  print("your year is ${day / 365}");
}
