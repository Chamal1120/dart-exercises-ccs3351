import 'package:test/test.dart';
import '../bin/ex_3_3.dart';

void main() {
  test('Remove duplicates from list', () {
    expect(getUniqueList([1, 2, 2, 3, 3]), [1, 2, 3]);
  });

  test('Handle empty list', () {
    expect(getUniqueList([]), []);
  });

  test('Remove duplicates from list with negative numbers', () {
    expect(getUniqueList([-1, -2, -2, -3]), [-1, -2, -3]);
  });
}

