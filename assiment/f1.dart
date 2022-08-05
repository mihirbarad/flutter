// 1. Display This Information using print
// a. Your Name
// b. Your Birth date
// c. Your Age
// d. Your Address
import 'dart:io';

main() {
  var name;
  var brithday;
  var age;
  var address;

  print("Enter Your name");
  name = stdin.readLineSync();
  print("Enter Your brithday");
  brithday = int.parse(stdin.readLineSync()!);
  print("Enter Your age");
  age = int.parse(stdin.readLineSync()!);
  print("Enter Your address");
  address = stdin.readLineSync();
  print("your name is $name");
  print("Your Brithday is $brithday");
  print("Your age is $age");
  print("Your address is $address");
}
