void main() {
  int m = 10;
  int n = 3;
  Abs kim = Abs();
  print(kim.abc(n, m));
  print(kim.abd(n, m));
}

class Abs {
  int abc(int n, int m) {
    return m ~/ n;
  }

  int abd(int n, int m) {
    return m % n;
  }
}
