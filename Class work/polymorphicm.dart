class A {
  void display() {
    print("A Class");
  }
}

class B extends A {
  void display() {
    super.display();
    print("B Display");
  }
}

void main() {
  var obj = B();
  obj.display();
}
