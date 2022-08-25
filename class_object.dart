class car {
  String? brandname;
  String? modalno;
  String? color;
  int? speed;
  int? price;

  car(String? brandname, String? modalno, String? color, int? speed,
      int? price) {
    this.brandname = brandname;
    this.modalno = modalno;
    this.color = color;
    this.speed = speed;
    this.price = price;
  }
}

void main() {
  print("Hello world");
  car audi = car('Audi', 'A6', 'red', 40, 1500);

  print("Name : ${audi.brandname}");
  print("modal no: ${audi.modalno}");
  print("car color: ${audi.color}");
  print("car price: ${audi.price}");
  print("car name: ${audi.speed}");
}
