import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(',');
  int a = int.parse(inputs[0]);
  String b = inputs[1];
  Exam exam = Exam();
  print(exam.calculator(a, b));
}

class Exam {
  int calculator(int a, String b) {
    int result = 0;
    if (b == 'km') {
      result = a * 1000000;
    } else if (b == 'm') {
      result = a * 1000;
    } else {
      result = a * 10;
    }
    return result;
  }
}