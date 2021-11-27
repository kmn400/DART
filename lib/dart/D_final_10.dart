import 'dart:convert';
import 'dart:io';

void main() {
  //처음 입력값에 따라, 입력값 수를 조건으로 입력값을 출력할 수 있는 로직을 생각하기 어려움.
  //입력값 로직을 짜기가 어렵기에, 출력값을 만드는 것도 하지 못함.
  List<String> inputs = stdin.readLineSync(encoding: utf8).split('.');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);
  int c = int.parse(inputs[2]);
  int d = int.parse(inputs[3]);
  Adress adress = Adress();

  print(adress.cal(a, b, c, d));
}

class Adress {
  String cal(int a, int b, int c, int d) {
    String result = '';
    bool firstip = a >= 0 && a <= 255;
    bool secondip = b >= 0 && b <= 255;
    bool thirdip = c >= 0 && c <= 255;
    bool fourthip = d >= 0 && d <= 255;

    if (firstip == true &&
        secondip == true &&
        thirdip == true &&
        fourthip == true) {
      result = 'True';
    } else {
      result = 'False';
    }
    return result;
  }
}