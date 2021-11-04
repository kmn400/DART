import 'dart:math';

void main() {
  Cleric cleric = Cleric(name: '김민호', hp: 20, mp: 4);
  print(cleric.pray(3));

}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHp = 50;
  final int maxMp = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    mp = mp - 5;
    hp = maxHp;
  }

  int pray(int sec) {
    int result = 0;
    Random random = Random();
    print(random.nextInt(3));
    if (mp == maxMp) {
      print(maxMp);
    }
    else
      print(random + 3);
      return result;
  }
}