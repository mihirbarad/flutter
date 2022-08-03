import 'dart:io';

main() {
  sum(0, 0);
  divition(0, 0);
  multy(0, 0);
  squr(0);
}

void sum(var num1, var num2) {
  print("*Sum detils*");
  print("Enter number 1 :");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2 :");
  num2 = int.parse(stdin.readLineSync()!);

  print("Your sum is ${num1 + num2}");
}

void divition(var num1, var num2) {
  print("*Divition detils*");
  print("Enter number 1 :");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2 :");
  num2 = int.parse(stdin.readLineSync()!);
  print("Your Divition is ${num1 / num2}");
}

void multy(var num1, var num2) {
  print("*multiplication  detils*");
  print("Enter number 1 :");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2 :");
  num2 = int.parse(stdin.readLineSync()!);
  print("Your multiplication  is ${num1 * num2}");
}

void squr(var num1) {
  print("*Squr detils*");
  print("Enter number : :");
  num1 = int.parse(stdin.readLineSync()!);

  print("Your squr  is ${num1 = num1 * num1}");
}
