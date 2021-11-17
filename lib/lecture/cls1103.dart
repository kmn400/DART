import 'dart:math';

void main() {
  Cleric cleric = Cleric(name: 'korea', hp: 100, mp: 50);
  cleric.mp = 30;
  print(cleric.pray(5));
}

class Cleric {
  //field, 전역, Global, property
  //전역 변수, field, member 변수, global 변수
  String name;
  int hp;
  int mp;

  // static 이라는 값이 들어간 함수는 시스템이 시작되면
  // 따로 저장공간에 관련 내용을 저장함.
  // -> static을 클래스 내에 지정하는 것은 main 함수에
  static final int maxHp = 100;
  static final int maxMp = 50;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    mp = mp - 5;
    hp = maxHp;
  }

  int pray(int sec) {
    int result = 0;
    Random random = Random();
    random.nextInt(3);
    if (mp <= maxMp && mp > 0) {
      if (mp + random.nextInt(3) + sec >= maxMp) {
        return maxMp;
      } else {
        return mp + random.nextInt(3) + sec;
      }
    } else if (mp > maxMp) {
      return maxMp;
    } else
      return result;
  }
}
