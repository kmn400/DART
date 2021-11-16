import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);
  Compare compare = Compare();
  print(compare.par(a, b));
}

class Compare {
  int par(int a, int b){
    int result = 0;
  if (a > b) {
    result = a;
  } else if (a == b) {
    result = int.parse('eq');
  } else {
    result = b;
  }
  return result;
  }
}
