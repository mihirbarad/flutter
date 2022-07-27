import 'dart:io';

main() {
  int total = 0;
  int num;

  for (var n = 1; n <= 5; n++) {
    print("Enter your mark");
    num = int.parse(stdin.readLineSync()!);
    total = total + num;
  }

  print("total = $total");
}
