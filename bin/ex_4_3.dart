abstract class Shape {
  // Properties
  final num _dim1, _dim2;
  
  // Getters for private properties
  num get dim1 => _dim1;
  num get dim2 => _dim2;
  
  // Constructor
  Shape(this._dim1, [this._dim2 = 0]);
  
  // Abstract methods
  num area();
  num perimeter();
}

// Rectangle class inherits Shape parent class
class Rectangle extends Shape {
  // Constructor initialization
  // Here I also have customized the values that will be shown by the LSP
  // so users of the class can determine what to put into fields
  Rectangle(num width, num height) : super(width, height);

  // Override the parent methods
  @override
  num area() {
    return dim1 * dim2;
  }

  @override
  num perimeter() {
    return 2 * (dim1 + dim2);
  }
}

class Square extends Shape {
  // Constructor initialization
  Square(num width) : super(width);

  // Override the parent methods
  @override
  num area() {
    return dim1 * dim1;
  }

  @override
  num perimeter() {
    return 4 * dim1;
  }
}

class Triangle extends Shape {
  // Constructor initialization
  Triangle(num base, num height) : super(base, height);

  // Override the parent methods
  @override
  num area() {
    return 0.5 * dim1 * dim2;
  }

  // Corrected perimeter formula (assuming it needs all sides for a triangle)
  @override
  num perimeter() {
    // Assuming equilateral triangle for simplicity
    return 3 * dim1;  // Perimeter = 3 * side for an equilateral triangle
  }
}

class Circle extends Shape {
  // Constructor initialization
  Circle(num radius) : super(radius);

  // Override the parent methods
  @override
  num area() {
    return num.parse((3.14 * dim1 * dim1).toStringAsFixed(2));
  }

  @override
  num perimeter() {
    return num.parse((2 * 3.14 * dim1).toStringAsFixed(2));
  }
}

void main() {
  // Instantiate the classes and create some objects
  Rectangle myRectangle = Rectangle(4, 5);
  Triangle myTriangle = Triangle(5, 10); // This will work with the new perimeter logic
  Square mySquare = Square(10);
  Circle myCircle = Circle(5);

  // Check the objects' behaviors
  print('The area of myRectangle is: ${myRectangle.area()}');
  print('The perimeter of myRectangle is: ${myRectangle.perimeter()}');
  print('The area of myTriangle is: ${myTriangle.area()}');
  print('The perimeter of myTriangle is: ${myTriangle.perimeter()}');
  print('The area of mySquare is: ${mySquare.area()}');
  print('The perimeter of mySquare is: ${mySquare.perimeter()}');
  print('The area of myCircle is: ${myCircle.area()}');
  print('The perimeter of myCircle is: ${myCircle.perimeter()}');
}

