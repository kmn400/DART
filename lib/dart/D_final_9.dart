import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int result = 0;

  for (int i = 1; i <= int.parse(inputs[1]); i++) {
    for (int j = 1; j <= int.parse(inputs[0]); j++) {
      result = j * i;
//입력값을 어떻게 다중으로 받는지 모르겠음.
    }
  }
  Pandan pandan = Pandan();
  print(pandan.blackwhite(result));
}

//아래는 입력값이 도출될 경우, 적용할 클래스 내부 구조
class Pandan {
  int blackwhite(result) {
    int value = 0;
    if (input[0] >= 128) {
      value = 1;
    } else {
      value = 0;
    }
    if (input[1] <= 128) {
      value = 0;
    } else {
      value = 1;
    }
  }
}