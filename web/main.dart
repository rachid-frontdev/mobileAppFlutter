import 'dart:html';

void main() {
  showDart();
  // int x = 12;
  // print(x  + 100);
//   'age': 21,
//   'skills': [{'first':'js'},{"two":'php'}]
// };
const pi = 3.14;
print(pi);
// Cars civic = Cars('honda','civic', 'black');
// Point two = Point(10,20,civic);
// print(two.x);
// two.named();
print(Cars.category);
Vehicule scania = Vehicule('scania','s20','black');
scania.printModel();
}

void showDart() {
  querySelector('#output')?.text = 'Your Dart app is running.';
}

abstract class Cars {
  //variables

  final String brand ;
  final String model ;
  final String color ;
  //static variables
  static String category = 'sedan car';

  //constructor
  Cars(this.brand,this.model ,this.color);

  void printModel() {
      print(model);
  }
  void isBackPressed();
  // void onHoverBtn();

  static void printStartProd() {
  print('start Prod');
}


  }
class Point {
  final num x;
  final num y;
  final Cars cart;

  // New syntax
  Point(this.x, this.y,this.cart);
  void named() {
    print(cart.color);
  }
}

class Vehicule extends Cars {
Vehicule(String brand,String model, String color) : super(brand,model,color);
// override
  @override void printModel() {
        print('from overide');
    super.printModel();
  }
  @override void isBackPressed() {
    print('hello');
}
}
