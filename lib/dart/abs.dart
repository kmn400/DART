void main() {
  int n = -98;
  Abs kim = Abs();
 // Abs abd = Abs();
  print(kim.abc(n));
  print(kim.abd(n));
}

class Abs {
  int abc(int n) {
    return n.abs();
  }

  int abd(int n) {
    if (n < 0) {
      return n * -1;
    } else if (n == 0) {
      return 0;
    } else {
      return n;
    }
  }
}