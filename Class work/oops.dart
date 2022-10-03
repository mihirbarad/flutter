/*
Oops :object oriented programing system 
class: class is a user defind data type that
in class we can contain element in single location with member function 

systex: 

class <classname >
{
  // data member
  // member function 
}


object: Object is a variable or instance of class that

using of object we can access properties of class 

systex: 
var objectname = classname();
*/

class student {
  int? id;
  String? name;
  void input(
    id,
    name,
  ) {
    this.id = id;
    this.name = name;
  }

  void display() {
    print("id =$id");
    print("name =$name");
  }
}

class faculty {
  int? id;
  String? name;

  void input(id, name) {
    this.id = id;
    this.name = name;
  }

  void display() {
    print("id = $id");
    print("name = $name");
  }
}

void main() {
  var obj = new student();
  obj.input(10, "aaa");
  obj.display();

  var fobj = new student();
  fobj.input(30, "JKJL");
  fobj.display();
}
