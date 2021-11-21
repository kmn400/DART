import 'dart:io';

void main() {
  //입력은 4행이며 입력의 끝에는 개행이 포함됩니다??
  int a = int.parse(stdin.readLineSync().substring(2));
  int b = int.parse(stdin.readLineSync().substring(2));
  int c = int.parse(stdin.readLineSync().substring(2));
  int d = int.parse(stdin.readLineSync().substring(2));

  Findcard1 findcard1 = Findcard1();
  Findcard2 findcard2 = Findcard2();
  print(findcard1.find(a, b, c, d));
  print(findcard2.find(a, b, c, d));
}

class Findcard1 {
  String find(int a, int b, int c, int d) {
    String result = '';
    var items = {a, b, c, d};
    if (items.contains(1) != true) {
      result = '1';
    } else if (items.contains(2) != true) {
      result = '2';
    } else if (items.contains(3) != true) {
      result = '3';
    } else if (items.contains(4) != true) {
      result = '4';
    } else if (items.contains(5) != true) {
      result = '5';
    }
    return result;
  }
}

class Findcard2 {
  String find(int a, int b, int c, int d) {
    List<int> data = [1, 2, 3, 4, 5];
    List<int> items = [a, b, c, d];
    List<int> dif = data.toSet().difference(items.toSet()).toList();
    return dif.join();
  }
}
