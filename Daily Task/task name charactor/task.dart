import 'dart:io';

void main() {
  var number = 0;

  print("enter your Name");
  var name = stdin.readLineSync()!;
  for (var i = 0; i < name.length; i++) {
    number = number + 1;

    print('$number ${name[i]}');
  }
  print("There are in $number cartory");
}
