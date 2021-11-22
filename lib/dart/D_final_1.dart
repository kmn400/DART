import 'dart:convert';
import 'dart:io';

void main() {
  //입력은 한 줄이며 끝에 줄 바꿈을 포함한다는 것이 무슨 뜻일까?
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);

  Oddeven oddeven = Oddeven();
  print(oddeven.cal(a, b));

  if (solve2(a, b)) {
    print('YES');
  } else {
    print('NO');
  }
}

class Oddeven {
  String cal(int a, int b) {
    //여기서 컴퓨터 내부에 충돌이 나지 않으면서, anum과 bnum을 동시에 처리할 수 있는지?
    int anum = a;
    if (a == 0) {
      anum = 0;
    } else {
      anum = a % 2;
    }
    int bnum = b;
    if (b == 0) {
      bnum = 0;
    } else {
      bnum = b % 2;
    }
    //아래 삼항연산을 람다식으로 바꿀 수 있는지 궁금합니다.
    return  anum == bnum ? 'NO' : 'YES';
    // 그럴리는 없겠지만, 결과값이 null이 나왔을 경우의 대응책
  }
}

bool solve2(int a, int b) => a.isEven == b.isOdd;
