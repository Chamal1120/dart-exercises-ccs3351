// A program that finds the maximum value in a list of integers using a function
import 'dart:io';

num getLargest(List<num> numList) {
  return numList.reduce((a, b) => a > b ? a : b);
}

void main() {
  print('Enter a list of numbers (space separated):');
  String? userInput = stdin.readLineSync()!;
  List<num> numList = userInput.split(' ').map(num.parse).toList();
  print('The largest value is: ${getLargest(numList)}.');
}
