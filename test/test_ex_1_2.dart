import 'package:test/test.dart';
import '../bin/ex_1_2.dart';

void main() {
  test('performs arithmetic and concatenates with string', () {
    expect(performConcatenate(), '20.5 22ug1-0093');
  });
}

