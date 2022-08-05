import 'dart:io';

main() {
  int i, j;
  var rows;
  print("Enter the number of rows: ");
  rows = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= rows; ++i) {
    for (j = 1; j <= i; ++j) {
      print("*");
    }
    print("\n");
  }
}
