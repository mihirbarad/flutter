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

class A {
  int num1 = 10;
  int num2 = 20;
}

class B extends A {
  int ans = 0;

  void display() {
    ans = num1 + num2;
    print(ans);
  }
}

class scoretable {
  int score = 0;

  int increment(int updatescore) {
    score += updatescore;
    return score;
  }

  int decrement(int updatescore) {
    score -= updatescore;
    return score;
  }
}

void main() {
  var obj = new Student();
  obj.input();
  obj.display();

  var ob = B();
  ob.display();

  var s = scoretable();
  print(s.increment(5));
  print(s.decrement(3));
}
