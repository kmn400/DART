import 'dart:convert';
import 'dart:io';

void main() {
  //입력은 한 줄이며 끝에 줄 바꿈을 포함한다는 것이 무슨 뜻일까?
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);

  Oddeven oddeven = Oddeven();
  print(oddeven.cal(a, b));
}

class Oddeven {
  String cal(int a, int b) {
    String result = '';
    int anum = a;
    if (a == 0) {
      anum = 0;
    } else {
      anum = a % 2;
    }
    int bnum = b;
    if (b == 0) {
      bnum = 0;
    } else {
      bnum = b % 2;
    }
    if (anum == 0 && bnum == 0) {
      result = 'NO';
    } else if (anum == 1 && bnum == 1) {
      result = 'NO';
    } else if (anum == 1 && bnum == 0) {
      result = 'YES';
    } else {
      result = 'YES';
    }
    return result;
  }
}