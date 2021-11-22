import 'dart:convert';
import 'dart:io';

void main() {
  print('숫자 두 개를 입력하세요');
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int N = int.parse(inputs[0]);
  int M = int.parse(inputs[1]);

  Pandan pandan = Pandan();
  if (pandan.cal(N, M)) {
    print('NO');
  } else {
    print('YES');
  }
}

class Pandan {
  bool cal(int N, int M) {
    bool evenodd = (N + M) % 2 == 0;
    return evenodd;
  }
}
