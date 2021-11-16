import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);

  Calculator calculator = Calculator();
  print(calculator.triangle(a, b));
}

class Calculator {
  String triangle(int a, int b) {
    String result = '';
    if (a + b >= 180) {
      result = 'null';
    } else if (a + b < 180 && a + b > 0) {
      result = '${180 - a - b}';
    } else {
      result = 'null';
    }
    return result;
    }
}
