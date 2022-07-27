import 'dart:io';

main() {
  var name = "";

  for (var n = 1; n <= 5; n++) {
    print("Enter your name");
    name = stdin.readLineSync()!;
  }
}
