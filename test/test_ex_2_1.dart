import 'package:test/test.dart';
import '../bin/ex_2_1.dart';
void main() {
  test('Check even number', () {
    expect(checkEvenOrOdd(2), 'That number is even.');
  });

  test('Check odd number', () {
    expect(checkEvenOrOdd(3), 'That number is odd.');
  });

  test('Check zero', () {
    expect(checkEvenOrOdd(0), 'That number is even.');
  });
}

