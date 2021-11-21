import 'dart:io';

void main() {
  //입력은 4행이며 입력의 끝에는 개행이 포함됩니다??
  int a = int.parse(stdin.readLineSync().substring(2));
  int b = int.parse(stdin.readLineSync().substring(2));
  int c = int.parse(stdin.readLineSync().substring(2));
  int d = int.parse(stdin.readLineSync().substring(2));

  Findcard findcard = Findcard();

  print(findcard.find(a, b, c, d));
}

class Findcard {
  String find(int a, int b, int c, int d) {
    String result = '';
    var items = {a, b, c, d};
    if (items .contains(1) != true) {
      result = '1';
    } else if (items .contains(2) != true) {
      result = '2';
    } else if (items .contains(3) != true) {
      result = '3';
    } else if (items .contains(4) != true) {
      result = '4';
    } else if (items .contains(5) != true) {
      result = '5';
    }
    return result;
  }
}