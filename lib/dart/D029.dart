void main() {
  Dice dice = Dice(num: 9);
  print(dice.back(2));
}

class Dice {
  int num;

  Dice({this.num});

  int back(int n) {
    return num - n;
  }
}
