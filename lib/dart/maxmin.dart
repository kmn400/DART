import 'dart:math';

void main() {
  int a = 12;
  int b = 10;
  int c = 9;
  int d = 6;
  int e = 3;
  Random random = Random();
  int maxNum = 3;
  int minNum = 1;

  print(max(max(max(max(a, b), c), d), e));
  print(min(min(min(min(a, b), c), d), e));

  maxNum = max(random.nextInt(3) + 1, maxNum);
  minNum = min(random.nextInt(3) + 1, minNum);
  print(maxNum);
  print(minNum);
}
