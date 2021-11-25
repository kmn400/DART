import 'dart:convert';
import 'dart:io';

void main() {
  String a = stdin.readLineSync(encoding: utf8);
  String b = stdin.readLineSync(encoding: utf8);
  String c = stdin.readLineSync(encoding: utf8);
  String d = stdin.readLineSync(encoding: utf8);
  String e = stdin.readLineSync(encoding: utf8);

  int anumber = int.parse(a);
  int bnumber = int.parse(b);
  int cnumber = int.parse(c);
  int dnumber = int.parse(d);
  int enumber = int.parse(e);

  List<int> net = [anumber, bnumber, cnumber, dnumber, enumber];
  net.sort();

  Cal cal = Cal();
  print(cal.subtract(net)[0]);
  print(cal.subtract(net)[1]);
  print(cal.subtract(net)[2]);
  print(cal.subtract(net)[3]);
}

class Cal {
  /* 메서드를 리스트로 설정해서 for문 내부에서
  'add'를 사용하여 값을 선언한 result(리스트)에
  담는 것이 중요. 그러려면 메서드를 list로 선언해주는 것이 필요 */
  List<int> subtract(List<int> net) {
    List<int> result = [];
    for (int i = 0; i < 4; i++) {
      result.add(net[i + 1] - net[i]);
    }
    result.sort();
    return result;
  }
}
