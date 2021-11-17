import 'dart:convert';
import 'dart:io';

void main() {
  String inputs = stdin.readLineSync(encoding: utf8);
  String a = inputs[0];
  String b = inputs[1];
  String c = inputs[2];
  String d = inputs[3];

  Cut cut = Cut();
  print(cut.cal(a, b, c, d));
}

class Cut {
  String result = '';

  String cal(String a, String b, String c, String d) {
    if (a == b && a == c && a == d && b == c && c == d) {
      result = '$a$b$c$d';
    } else {
      result = 'NO';
    }
    return result;
  }
}
