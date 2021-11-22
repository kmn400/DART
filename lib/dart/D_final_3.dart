import 'dart:convert';
import 'dart:io';

void main() {
  String n = stdin.readLineSync(encoding: utf8);
  int a = int.parse(n[0]);
  int b = int.parse(n[1]);
  int c = int.parse(n[2]);
  int d = int.parse(n[3]);

  Pandan pandan = Pandan();

  print(pandan.compare(a, b, c, d));
}

class Pandan {
  String compare(int a, int b, int c, int d) {
    int map = {a, b, c, d}.length;
    return map == 1 ? '$a$b$c$d' : 'No';
  }
}