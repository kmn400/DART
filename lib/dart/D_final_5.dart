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
  print(cal.subtract(net));
}

class Cal {
  int subtract(List<int> net) {
    int result = 0;
    for (int i = 0; i < 5; i++) {
      result = net[i + 1] - net[i];
    }
    return result;
  }
}
//선생님, 이 코드  작동을 안하는데 이유가 궁금합니다.