// A program that removes duplicate elements from a list
// Strategy used: In dart the Set data structure ensures that all elements are unique

import 'dart:io';

List<num> getUniqueList(List<num> numList) {
  return numList.toSet().toList();
}

void main() {
  print('Enter a list of numbers (space separated):');
  String? userInput = stdin.readLineSync()!.trim();
  List<num> numList = userInput.split(' ').map(num.parse).toList();
  print('The unique list is:');
  print(getUniqueList(numList));
}
