void main() {
  print(exam(1, 'km'));
  print(exam(54, 'km'));
  print(exam(2, 'cm'));
  print(exam(12, 'm')); // 인자 (argument)
}

// 매개변수 (parameter)
int exam(int n, String s) {
  int result = 0;
  if (s == 'km') {
    result = n * 1000000;
  } else if (s == 'm') {
    result = n * 1000;
  } else {
    result = n * 10;
  }
  return result;
}
