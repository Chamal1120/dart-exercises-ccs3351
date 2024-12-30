import 'package:test/test.dart';
import '../bin/ex_5_1.dart';

void main() {
  group('Async Example Tests', () {
    test('doJob1 returns correct message', () async {
      expect(await doJob1(), 'This is the job 1');
    });

    test('doJob2 returns correct message after delay', () async {
      Stopwatch stopwatch = Stopwatch()..start();
      expect(await doJob2(), 'This is the job 2: A time consuming job');
      stopwatch.stop();
      expect(stopwatch.elapsedMilliseconds, greaterThanOrEqualTo(1900));
      expect(stopwatch.elapsedMilliseconds, lessThan(2100));
    });

    test('doJob3 returns correct message', () async {
      expect(await doJob3(), 'This is the job 3');
    });

    test('Jobs execute in the correct order and with delay', () async {
      List<String> messages = [];
       Stopwatch stopwatch = Stopwatch()..start();

      messages.add(await doJob1());
      messages.add(await doJob2());
      messages.add(await doJob3());
       stopwatch.stop();
      expect(stopwatch.elapsedMilliseconds, greaterThanOrEqualTo(1900));
      expect(stopwatch.elapsedMilliseconds, lessThan(2100));

      expect(messages, [
        'This is the job 1',
        'This is the job 2: A time consuming job',
        'This is the job 3',
      ]);
    });
  });
}
