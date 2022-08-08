class Student {
  var mark;
  var name;
  void input() {
    mark = 10;
    name = 'aaa';
  }

  void display() {
    print("name = $name");
    print("marks = $mark");
  }
}

void main() {
  var obj = new Student();
  obj.input();
  obj.display();
}
