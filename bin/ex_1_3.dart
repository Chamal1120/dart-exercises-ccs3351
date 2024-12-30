// A personalized greeting using a user input
import 'dart:io';

String getGreeting(String? name) {
  if (name == null || name.isEmpty) {
    return 'No name provided!';
  } else {
    return 'Greetings $name from Dart!';
  }
}

void main() {
  print('Enter your name:');
  String? userInput = stdin.readLineSync();
  print(getGreeting(userInput));
}
