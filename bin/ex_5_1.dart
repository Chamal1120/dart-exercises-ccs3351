import 'dart:async';

// Create three futures (one with a simualted delay)
Future<String> doJob1() async {
  return 'This is the job 1';
}

Future<String> doJob2() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'This is the job 2: A time consuming job';
}

Future<String> doJob3() async {
  return 'This is the job 3';
}

void main() async {
  print(await doJob1());
  print(await doJob2());
  print(await doJob3());
}
