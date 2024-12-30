// Function to calculate the factorial of a given number
import 'dart:io';

num getFactorial(num userNum) {
  if (userNum <= 1) {
    return 1;
  } else {
    return userNum * getFactorial(userNum - 1);
  }
}

void main() {
  print('Enter a number to get the factorial:');
  num? userNum = num.parse(stdin.readLineSync()!);
  print(getFactorial(userNum));
}

