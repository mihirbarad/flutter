void main() {
  var myList = [24, 56, 84, 92];

  for (var i = 0; i < myList.length / 2; i++) {
    var temp = myList[i];
    myList[i] = myList[myList.length - 1 - i];
    myList[myList.length - 1 - i] = temp;
  }

  print(myList);
}
