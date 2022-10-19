/*

Inheritance : one class derived propertied of parent class to child class 

there are mainly 5 types of inheritance 

1. single leval 
2.multi-leval 
3.multiple 
4.hierarchical 
5.hybrid 

1.single leval

class A 
 |
 clas b

*/

class a {
  void display() {
    print("A class");
  }
}

class b extends a {
  void displayb() {
    print("B class0");
  }
}

class c extends b {
  void displayc() {
    print("c class0");
  }
}

void main() {
  var obj = c();
  obj.display();
  obj.displayb();
  obj.displayc();
}
