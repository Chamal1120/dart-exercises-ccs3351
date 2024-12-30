import 'package:test/test.dart';
import '../bin/ex_4_1.dart';

void main() {
  test('Create person object and access properties', () {
    var person = Person('foo', 30, 'bar');
    expect(person.name, 'foo');
    expect(person.age, 30);
    expect(person.address, 'bar');
  });
}

