import 'package:test/test.dart';
import '../bin/ex_3_1.dart';

void main() {
  test('Factorial of a positive number', () {
    expect(getFactorial(5), 120);
  });

  test('Factorial of zero', () {
    expect(getFactorial(0), 1);
  });

  test('Factorial of a negative number', () {
    expect(getFactorial(-5), 1);
  });
}

