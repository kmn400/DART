void main() {

  print(madd(3, 5, 3, 3));
  print(add2(3, 5, c: 3, d: 4, e: 5))
}

int add (int a, int b){
  return a + b;

}


//맨 뒤에 있는 요소만 옵션값([])을 지정할 수 있따.
// 그러나, int c, int d 값에 아무것도 넣고 싶지 않으면
// int c = 0 , int d = 0 등을 넣어주면 된다.
// optional positional parameter
int madd(int a, int b, [int c, int d]) {
  return a + b;

}
// 맨 뒤에 있는 요소만 옵션값({})을 지정할 수 있다.
// optional positional parameter보다 더 자주 사용
// -> 왜냐하면, 입력 값에, 항목 값을 넣어서 사용할 수 있기에
//    가독성이 좋다.
// named parameter
int add2(int a, int b, {int c, int d, int e}) {
  return a + b ;

}