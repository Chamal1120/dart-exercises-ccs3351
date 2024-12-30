import 'package:test/test.dart';
import '../bin/ex_2_2.dart';

void main() {
  test('Leap year check for a leap year', () {
    expect(checkLeapYear(2024), 'It is a leap year');
  });

  test('Leap year check for a non-leap year', () {
    expect(checkLeapYear(2023), 'It is not a leap year');
  });

  test('Leap year check for century year', () {
    expect(checkLeapYear(1900), 'It is not a leap year');
  });

  test('Leap year check for a century divisible by 400', () {
    expect(checkLeapYear(2000), 'It is a leap year');
  });
}

