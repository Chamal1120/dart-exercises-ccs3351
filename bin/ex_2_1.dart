// A program to determine a given number is even or odd
import 'dart:io';

String checkEvenOrOdd(num myNum) {
  if (myNum % 2 == 0) {
    return 'That number is even.';
  } else {
    return 'That number is odd.';
  }
}

void main() {
  print('Enter a number:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No number entered!');
    return;
  }

  try {
    num myNum = num.parse(input);
    print(checkEvenOrOdd(myNum));
  } catch (e) {
    print('Invalid number entered!');
  }
}
