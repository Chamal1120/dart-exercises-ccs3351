import 'package:test/test.dart';
import '../bin/ex_1_3.dart';

void main() {
  test('Greeting with valid name', () {
    expect(getGreeting('Alice'), 'Greetings Alice from Dart!');
  });

  test('Greeting with empty name', () {
    expect(getGreeting(''), 'No name provided!');
  });

  test('Greeting with null name', () {
    expect(getGreeting(null), 'No name provided!');
  });
}

