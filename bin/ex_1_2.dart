// Perform arithmatic operations and concatenate with a string

String performConcatenate() {
  int? myInt;
  double? myDouble;
  String? myStr;

  myInt = 10;
  myDouble = 10.5;
  myStr = '22ug1-0093';

  return '${(myInt + myDouble).toString()} $myStr';
}

void main() {
  print(performConcatenate());
}

