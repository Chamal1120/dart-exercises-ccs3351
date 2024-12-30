import 'package:test/test.dart';
import '../bin/ex_4_2.dart';

void main() {
  test('Calulates Birth Year', () {
    var person = Person("foo", 30, "bar");
    expect(person.birthYear, DateTime.now().year - 30);
  });
}

