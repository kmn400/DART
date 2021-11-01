//int형 변수 gender 를 선언하고, 0 또는 1을 대입한다 (어떤 것이라도 상관없음)
//또한, int 형 변수 age 를 선언하고, 적당한 숫자를 대입한다.
//화면에 “안녕하세요” 를 표시한다
//만약 변수 gender 가 0이면 “나는 남자입니다", 그렇지 않으면 “나는 여자입니다" 를 표시한다
//만약 변수 gender 가 남자이면 age 변수의 값을 표시하고, 뒤에 “살입니다" 를 붙여서 표시한다.
//마지막에 “잘 부탁합니다" 를 표시한다
import 'dart:io';

void main() {
  print('남자면 0을 여자면 1을 입력하세요');
  String genderString = stdin.readLineSync();
  int gender = int.parse(genderString);
  print('나이를 입력하세요');
  String ageString = stdin.readLineSync();
  int age = int.parse(ageString);

  print('안녕하세요');

  if (gender == 0) {
    print('나는 남자입니다');
  } else if (gender == 1) {
    print('나는 여자입니다');
  }

  if (gender == 0) {
    print('$age 살입니다');
  }
  print('잘 부탁합니다');
}