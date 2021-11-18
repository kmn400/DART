import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);
  Div div = Div();
  print('${div.cal1(a, b)} ${div.cal2(a, b)}');
}

class Div {
  int cal1(int a, int b) {
    return a ~/ b;
  }

  int cal2(int a, int b) {
    return a % b;
  }
}