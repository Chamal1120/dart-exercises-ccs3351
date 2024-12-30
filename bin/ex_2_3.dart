// A function that takes a list of integers and returns the sum of all positive integers

import 'dart:io';

int getPositiveSum(List<int> numList) {
  return numList.where((number) => number > 0).reduce((a, b) => a + b);
}

int getPositiveSumFromInput(String userInput) {
  List<int> myNumList = userInput.split(' ').map(int.parse).toList();
  return getPositiveSum(myNumList);
}

void main() {
  print('Enter the list of numbers (space separated):');
  String? userInput = stdin.readLineSync()!;
  print('The sum is: ${getPositiveSumFromInput(userInput)}');
}

