// Checking if a given year is a leap year or not

import 'dart:io';

String checkLeapYear(int year) {
  if (year % 4 == 0 && year % 100 != 0) {
    return 'It is a leap year';
  } else if (year % 400 == 0) {
    return 'It is a leap year';
  } else {
    return 'It is not a leap year';
  }
}

void main() {
  print('Type a year to check:');
  int? year = int.parse(stdin.readLineSync()!);
  print(checkLeapYear(year));
}
