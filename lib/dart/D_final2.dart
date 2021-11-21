import 'dart:io';

void main() {
  //입력은 4행이며 입력의 끝에는 개행이 포함됩니다??
  String a = stdin.readLineSync();
  String b = stdin.readLineSync();
  String c = stdin.readLineSync();
  String d = stdin.readLineSync();

  Findcard findcard = Findcard();
  print(findcard.find(a, b, c, d));
}

class Findcard {
  String find(String a, String b, String c, String d) {
    String result = '';
    return result;
  }
}