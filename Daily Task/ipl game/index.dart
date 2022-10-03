import "dart:math";

var list = ['head', 'tail'];

// generates a new Random object
final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
var element = list[_random.nextInt(list.length)];
void main() {
  print(element);
}
