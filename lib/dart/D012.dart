import 'dart:convert';
import 'dart:io';

void main() {
  String input = stdin.readLineSync(encoding: utf8);
  int a = int.parse(input);
  Abs abs = Abs();

  print(abs.abc(a));
  print(abs.abd(a));
}

class Abs {
  int abc(int n) {
    return n.abs();
  }

  int abd(int n) {
    if (n < 0) {
      return n * -1;
    } else if (n == 0) {
      return 0;
    } else {
      return n;
    }
  }
}
