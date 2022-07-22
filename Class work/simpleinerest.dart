import 'dart:io';

main() {
  var Principal;
  var Rate;
  var Interest;

  print("enter your Principal number");
  Principal = int.parse(stdin.readLineSync()!);
  print("enter your Rate number");
  Rate = int.parse(stdin.readLineSync()!);
  print("enter your Interest number");
  Interest = int.parse(stdin.readLineSync()!);

  print("your month is ${(Principal * Rate * Interest) / 100}");
}
