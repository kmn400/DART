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
