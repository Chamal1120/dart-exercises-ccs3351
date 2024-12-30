import 'dart:io';

import 'package:test/test.dart';
import '../bin/ex_5_3.dart'; 

void main() {
  group('readFileAsync Tests', () {
    test('reads file and yields correct lines', () async {
      final tempFile = File('test_file.txt');
      await tempFile.writeAsString('Line 1\nLine 2\nLine 3');

      final lines = <String>[];
      await for (var line in readFileAsync(tempFile)) {
        lines.add(line);
      }

      expect(lines, ['Line 1', 'Line 2', 'Line 3']);

      await tempFile.delete();
    });

    test('reads file and yields correct lines with timing check', () async {
      final tempFile = File('test_file2.txt');
      await tempFile.writeAsString('Line 1\nLine 2\nLine 3');

      final lines = <String>[];
      Stopwatch stopwatch = Stopwatch()..start();
      await for (var line in readFileAsync(tempFile)) {
        lines.add(line);
      }
      stopwatch.stop();

      expect(lines, ['Line 1', 'Line 2', 'Line 3']);
      expect(stopwatch.elapsedMilliseconds, greaterThanOrEqualTo(20));
      expect(stopwatch.elapsedMilliseconds, lessThan(50));

      await tempFile.delete();
    });
  });
}
