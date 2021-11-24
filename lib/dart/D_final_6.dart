import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split('');

  CollectCal cal = CollectCal();

  print(cal.count(inputs));
}

/* 이 클래스에서 result 값을 정의할 때 '1'로 정의했다.
이럴 경우, for문에서 '1'이 이미 하나 있는 것으로 파악함.
또한, for문에서 'result += result'를 썼는데,
이럴 경우, result에 계속 result 값들을 추가하는 것이기에,
의도했던 바('1'이 11 - length만큼 출력되게 하는 것)와
다르게 출력됨.

따라서, 주석 처리를 하지 않은, 수정된 'CollectCal' 클래스를
활용해야 함. 주된 변경 사항은 for문에 적용된 규칙임.
result += '1'
위 식은 for문이 돌 때마다, String '1'을 추가함.

아래는 잘못된 코드

class Cal {
  String count(List<String> inputs) {
    String result = '1';
    if (inputs.length >= 11) {
      result = 'ok';
    } else {
      for (int i = 0; i < inputs.length; i++) {
        result += result;
      }
      return result;
    }
  }
} */


class CollectCal {
  String count(List<String> inputs) {
    String result = '';
    if (inputs.length >= 11) {
      result = 'ok';
    } else {
      int num = 11 - inputs.length;
      for (int i = 0; i < num; i++) {
        result += '1';
      }
    }
    return result;
  }
} 
