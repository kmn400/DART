void main() {
  print(tester(4444));
  print(tester(3335));
}

String tester(int a){

  int a1 = a ~/ 1000;

  int a2 = a % 1000 ~/ 100;

  int a3 = a % 100 ~/ 10;

  int a4 = a% 10 ~/ 1;

  if (a1 == a2 && a2 == a3 && a3 == a4) {
    return '$a';
  } else {
    return "no";
  }
}