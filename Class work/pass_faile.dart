import 'dart:async';
import 'dart:io';

void main() {
  var marks = 0;
  var subjects;
  var pass_count = 0;
  var fail_count = 0;
  var pass = 0;

  for (var i = 1; i <= 5; i++) {
    print("Enter Your marks");
    marks = int.parse(stdin.readLineSync()!);

    if (marks < 35) {
      fail_count += 1;
    } else {
      pass_count += 1;
      pass = pass + marks;
    }
  }

  print("Pass = $pass_count");
  print("Pass = $fail_count");
  print("Pass = $pass");
}
