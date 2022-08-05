// import 'dart:io';

// main() {
//   var num1;
//   print("Enter Number 1");
//   num1 = int.parse(stdin.readLineSync()!);

//   if (num1 ) {

//   }
// }

import 'dart:io';

main() {
  int i, c = 0;
  var n;

  print("Enter any number n:");
  n = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= n; i++) {
    if (n % i == 0) {
      c++;
    }
  }

  if (c == 2) {
    print(" Prime number");
  } else {
    print(" Not a Prime number");
  }
  return 0;
}
