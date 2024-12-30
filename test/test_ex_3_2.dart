import 'package:test/test.dart';
import '../bin/ex_3_2.dart';

void main() {
  test('Find the largest number', () {
    expect(getLargest([1, 2, 3, 4, 5]), 5);
  });

  test('Find the largest number with negatives', () {
    expect(getLargest([-1, -2, -3]), -1);
  });

  test('Find the largest in a single-element list', () {
    expect(getLargest([10]), 10);
  });
}

