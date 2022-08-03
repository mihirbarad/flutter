import 'dart:io';

void main() {
  display();
}

void display() {
  print("Enter number 1:");
  var num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2:");
  var num2 = int.parse(stdin.readLineSync()!);

  var ans = num1 + num2;
  print(ans);
}
