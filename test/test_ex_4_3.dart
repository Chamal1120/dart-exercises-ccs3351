import 'package:test/test.dart';
import '../bin/ex_4_3.dart';

void main() {
  test('Area and perimeter of Rectangle', () {
    var rectangle = Rectangle(4, 5);
    expect(rectangle.area(), 20);
    expect(rectangle.perimeter(), 18);
  });

  test('Area and perimeter of Square', () {
    var square = Square(10);
    expect(square.area(), 100);
    expect(square.perimeter(), 40);
  });

  test('Area and perimeter of Triangle', () {
    var triangle = Triangle(5, 10);
    expect(triangle.area(), 25);
    expect(triangle.perimeter(), 15);
  });

  test('Area and perimeter of Circle', () {
    var circle = Circle(5);
    expect(circle.area(), 78.5);
    expect(circle.perimeter(), 31.4);
  });
}
