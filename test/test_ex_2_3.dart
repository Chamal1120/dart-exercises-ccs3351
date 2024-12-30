import 'package:test/test.dart';
import '../bin/ex_2_3.dart';

void main() {
  test('Sum of positive integers in a string input', () {
    expect(getPositiveSumFromInput('1 -2 3 4 -5'), 8);
  });
}

