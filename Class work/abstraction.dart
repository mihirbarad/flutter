/*

abstraction : abstraction which hide current properties 

abstraction concept is only achieved by abstract class

abstract which contain only few information not allocated background information 
in simple word we can say that abstraction class can contain abstract methord(method without body)

abstract class can create by abstract keyword
 */

abstract class RBI {
  void roi();
}

class sbi extends RBI {
  @override
  void roi() {
    print("7.8");
  }
}

class HDFC extends RBI {
  @override
  void roi() {
    print("8.2");
  }
}

void main() {
  var Sbi = sbi();
  Sbi.roi();

  var hdfc = HDFC();
  hdfc.roi();
}
