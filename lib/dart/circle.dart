//int형 변수 tries 에 임의의 다트를 던질 수를 할당한다.
//int형 hits 변수를 0으로 초기화 한다
//tries 의 수 만큼 for 문을 반복하며 아래 a, b 를 수행한다

//다트가 꽂히는 좌표 x, y 를 랜덤한 값으로 정하되 범위는 -1 ~ 1 사이의 실수(double) 로 한다
//힌트 : new Random().nextDouble() 는 0 ~ 1 사이의 실수를 랜덤하게 리턴 해 준다
//다트가 꽂힌 좌표가 원 안에 있을 경우 hits 를 증가연산자를 사용하여 1 증가 시킨다
//힌트 : 두 점 (x1, y1), (x2, y2) 의 거리는 sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)) 로 구할 수 있음중점은 0, 0 임

//반복이 끝나면 실수형 변수 piEstimate 를 선언과 동시에 PI 값을 계산하여 대입하여 초기화 한다
//힌트 : hits / tries 의 비율은 원의 면적 / 사각형의 면적과 같고이는 원주율(PI) / 4 와도 같다. 이 관계를 이용하여 PI를 구하면 됨식은 이겁니다 : piEstimate = 4 * hits / tries
//마지막에 PI 값의 예상값 piEstimate 를 출력한다.
//3.141592…. 에 가까운 값이 나오는지 확인한다.
import 'dart:io';

void main() {
  String triesstring = stdin.readLineSync();
  int tries = int.parse(triesstring);
  int hits = 0;

  for(int i = 0; i < tries; i++) {

    new Random().nextDouble()


  }
    if(nums[i] %2 ==0) { //짝수
      total = total + nums[i];
    }
}