void main() {
  final cleric = Cleric(name: '김민호', hp: 20, mp: 4);
}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxhp = 50;
  final int maxmp = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid(){
    mp = mp - 5;
    hp = maxhp;
  }
}
