import 'dart:io';

main() {
  print(checkevenodd());
}

String checkevenodd() {
  print("enter number :");
  var num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    return "even number";
  } else {
    return "odd number";
  }
}
