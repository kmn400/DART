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

  print(net[1] - net[0]);
  print(net[2] - net[1]);
  print(net[3] - net[2]);
  print(net[4] - net[3]);
}
