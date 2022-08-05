//7. Write a program to convert temperature from degree centigrade to Fahrenheit.

import 'dart:io';

main() {
  var celsius;
  print("Enter Celsius number: ");
  celsius = int.parse(stdin.readLineSync()!);
  var fahrenheit = ((celsius * 9) / 5) + 32;
  print("Temperature in Fahrenheit is:  $fahrenheit ");
}
