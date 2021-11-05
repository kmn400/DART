import 'dart:math';

void main() {
  Cleric cleric = Cleric(name: 'korea', hp: 100, mp: 50);
  cleric.mp = 30;
  print(cleric.pray(5));
}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHp = 100;
  final int maxMp = 50;

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
      }
      else{
      return mp + random.nextInt(3) + sec;
    }
    }
    else if (mp > maxMp) {
      return maxMp;
    }
    else
      return result;
  }
}