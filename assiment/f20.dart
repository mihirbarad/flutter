//20. Looping Programs
/*

a. Write a program to print the 1 to 10 using For loop.
b. Write a Program to print the 51 to 60 using while loop
c. write a program to print the 100 to 81 using do....while loop
d .write a program you have to find the factorial of given number.
e. Write a program you have to print the Fibonacci series up to user given number
f. write a program you have to print the table of given number.
g. Write a program to print the number in reverse order.
h .Write a program to find out the max from given number (E.g. No: -1562 Max number is 6 )
i. Write a program make a summation of given number(E.g. 1523 ans :-11)
j. Write a program you have to make a summation of first and last Digit. (E.g. 1234 ans:-5)
 */
import 'dart:io';

main() {
  a();
  b();
  c();
  d();
  e();
  f();
  g();
  h();
  i();
}

a() {
  for (var i = 1; i <= 10; i++) {
    print(i);
  }
}

b() {
  var i = 51;
  while (i <= 60) {
    print(i);
    i++;
  }
}

c() {
  var i = 100;
  do {
    print(i);
    i--;
  } while (i >= 81);
}

d() {
  int factorial = 1;
  var number;
  print(" factorial you need number: ");
  number = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= number; i++) {
    factorial = factorial * i;
  }
  print("Factorial is  $factorial");
}

e() {
  int n1 = 0;
  int n2 = 1;
  var n3, i;
  var number;
  print("Enter Fibonacci number:");
  number = int.parse(stdin.readLineSync()!);

  for (i = 2; i < number; ++i) {
    n3 = n1 + n2;
    print(n3);
    n1 = n2;
    n2 = n3;
  }
}

f() {
  var num1;

  var num3;
  print("Enter table number :");
  num1 = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= 10; i++) {
    num3 = num1 * i;
    print(" $num1" + " $i " + "$num3 ");
  }
}

g() {
  var myList = [24, 56, 84, 92];

  for (var i = 0; i < myList.length / 2; i++) {
    var temp = myList[i];
    myList[i] = myList[myList.length - 1 - i];
    myList[myList.length - 1 - i] = temp;
  }

  print(myList);
}

h() {
  var n;
  int max = 0;
  print("Enter a number (0 to exit): ");
  n = int.parse(stdin.readLineSync()!);

  while (n != 0) {
    if (max < n) {
      max = n;
    }
    print("Enter a number (0 to exit): ");
    n = int.parse(stdin.readLineSync()!);
  }
  print("Max is:  $max");
}

i() {}
j() {}
