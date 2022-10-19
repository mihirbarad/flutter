/*
4) hairchikal 

 a
b c
*/

class A {
  void printName() {
    print("A");
  }
}

class B extends A {
  void age() {
    print("B");
  }
}

class C extends A {
  void name() {
    print("C");
  }
}

void main() {
  B obj1 = new B();
  obj1.printName();
  obj1.age();

  C obj = new C();
  obj.printName();
  obj.name();
}
