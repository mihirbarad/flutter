import 'constructor.dart';

/**
 * 
 */

class Student {
  int? id;
  String? name;

  void setID(int id) {
    this.id = id;
  }

  int getId() {
    return this.id!;
  }

  void setname(String name) {
    this.name = name;
  }

  String getName() {
    return this.name!;
  }
}

void main() {
  var s = Student();

  s.setID(5);
  s.setname("aaa");

  print(s.getId());
  print(s.getName());
}
