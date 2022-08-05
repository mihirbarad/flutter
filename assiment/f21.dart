import 'dart:io';

main() {
  Firstpatten();
  secondpattern();
  thirdpatten();
  fourpatten();
  fourpatten();
  tenpatten();
  ninepatten();
}

Firstpatten() {
  print("enter first number :");
  var i = int.parse(stdin.readLineSync()!);
  for (int j = 1; j <= i; j++) {
    print("*  " * j);
  }
}

thirdpatten() {
  print("enter thaird number :");
  var i = int.parse(stdin.readLineSync()!);
  for (int j = 1; j <= i; j++) {
    print("$j  " * j);
  }
}

fourpatten() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = 2 * (rows - i); j >= 0; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

sevenpatten() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

secondpattern() {
  int i, j, numbers, n = 10;
  for (i = 0; i < n; i++) {
    numbers = 1;
    for (j = 0; j <= i; j++) {
      stdout.write('$numbers ');
      numbers++;
    }
    stdout.writeln();
  }
}

tenpatten() {
  int i, j, numbers = 1;
  var n;
  print("Enter a number :");
  n = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= n; i++) {
    for (j = 1; j < i + 1; j++) {
      stdout.write('${numbers++} ');
    }
    stdout.writeln();
  }
}

ninepatten() {
  int rows = 6;
  for (int i = 0; i < rows; i++) {
    for (int j = 2 * (rows - i); j >= 0; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("$j " * j);
    }
    stdout.writeln();
  }
}
