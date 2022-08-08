import 'dart:io';

class Student {
  var marks;
  var name;
}

class fecolty {
  var marks;
  var name;
  void Input() {
    print("Enter Marks");
    marks = int.parse(stdin.readLineSync()!);
    print("Enter Name");
    name = stdin.readLineSync()!;
  }

  void Display() {
    print("Your name = $name");
    print("hello $name your marks = $marks");
  }
}

void main() {
  var obj = new Student();
  var obj1 = new fecolty();
  obj1.Input();
  obj1.Display();
}
