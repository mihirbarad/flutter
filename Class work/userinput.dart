import 'dart:io';

main() {
  var name;
  print("Enter Your name");
  name = stdin.readLineSync();

  print(" your name is $name");

  //Null value Example

  String? nam;
  print("Enter Your name");
  nam = stdin.readLineSync();
  print(" your name is $nam");
}
