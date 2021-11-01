void main() {
  print(exam(60, 90));
  print(exam(123, 45));
}
//화살표 표기법, 람다식(lambda expression)
int exam(int a, int b) {
  int result = 0;

  //삼각형의 내각의 합
  int i = 180;

  result = i - (a + b);

  return result;

}