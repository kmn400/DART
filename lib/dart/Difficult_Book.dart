/*오늘 같은 날씨가 좋은 날은 근처 공원에 가서 책이라도 읽자!
좋아하는 책을 들고 공원에 온 당신, 불행하게도 공원에서는 공사가 진행되고있는 것 같습니
다.
공사 현장 근처는 소음이 크기 때문에 독서에 적합하지 않습니다. 그래서 당신은 먼저 독서
에 적합한 장소를 찾기로했습니다.
공사 현장은 공원에서 단 한 군데이고 그 위치는 좌표 (a, b)입니다.
공사 현장에서 반경 R 미터 미만은 소음이 크기 때문에 독서에 적합하지 않습니다.
또한 공원에는 독서 안성맞춤의 그늘이 N 군데 있으며, i 번째의 그늘의 위치는 (x_i, y_i)입
니다.
이상의 정보가 주어 졌을 때 각 그늘이 독서에 적합한지의 (즉, 공사 현장에서 R 미터 이상
떨어져있는지) 여부를 확인할 수 있는 프로그램을 작성하세요.
"위치 (x, y)가 공사 현장에서 R 미터 이상 떨어져있다"는 조건은 다음 식으로 표현할 수 있
습니다.

입력 받을 문자열 수와 문자열을 입력받고 출력 포멧에 맞게 출력하세요.


입력

첫 번째 줄에는 세 개의 정수 a, b, R 이 입력됩니다.
a, b는 각각 공사 현장의 위치의 x 좌표, y 좌표를, R은 공사 현장의 소음의 크기를 나타냅니
다.
두 번째 줄에는 나무 그늘의 수를 나타내는 정수 N이 입력됩니다. 이어지는 N 행에는 각 그
늘의 좌표를 나타내는 2 개의 정수 x_i, y_i가 입력됩니다.

a b R # 공사 현장의 x 좌표, 공사 현장의 y 좌표 공사장 소음의 크기
N # 나무 그늘의 수
x_1 y_1 # 나무 그늘1의 x 좌표, y 좌표
x_2 y_2 # 나무 그늘2의 x 좌표, y 좌표
...
x_N y_N # 나무 그늘N의 x 좌표, y 좌표

각각의 값은 문자열로 표준 입력을 통해 입력받습니다.


출력

출력은 N 행으로 구성됩니다. N 개의 그늘 각각에 대하여 그 그늘이 독서에 적합하다 (즉, 공
사 현장에서 R 미터 이상 떨어져있는)라면 "silent"를 출력합니다.
나무 그늘이 독서에 적합하지 않았다면 "noisy"라고 출력합니다.
마지막은 개행하고 불필요한 문자나 빈 행을 포함하지 마십시오.


입력 예1

20 10 10
3
25 10
20 15
70 70

출력 예1

noisy
noisy
silent


입력 예2

⭐⭐ 조용한 곳 찾기 3
50 50 100
4
0 0
0 100
100 0
100 100


출력 예2

noisy
noisy
noisy
noisy*/

import 'dart:convert';
import 'dart:io';

void main() {

  List<String> line = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(line[0]);
  int b = int.parse(line[1]);
  int R = int.parse(line[2]);

  int N = int.parse(stdin.readLineSync(encoding: utf8));

  List<Tree> trees = [];
  for (int i = 0; i < N; i++) {
    // 나무 좌표 입력
    List<String> coords = stdin.readLineSync(encoding: utf8).split(' ');
    int x = int.parse(coords[0]);
    int y = int.parse(coords[1]);

    Tree tree = Tree(x, y);
    trees.add(tree);
  }


  GongSa gongSa = GongSa(a, b, R);

  Park park = Park(trees, gongSa);

  // for (int i = 0; i < park.getSilents().length; i++) {
  //   bool isSilent = park.getSilents()[i];
  // }
  for (final isSilent in park.getSilents()) {
    if (isSilent) {
      print('silent');
    } else {
      print('noisy');
    }
  }
}

class Park {
  List<Tree> trees;
  GongSa gongSa;

  Park(this.trees, this.gongSa);

  List<bool> getSilents() {
    List<bool> result = [];

    for (final tree in trees) {
      bool isSilent = gongSa.getSilent(tree);
      result.add(isSilent);
    }

    return result;
  }
}

class GongSa {
  int x;
  int y;
  int R;

  GongSa(this.x, this.y, this.R);

  bool getSilent(Tree tree) {
    return (tree.x - x) * (tree.x - x) + (tree.y - y) * (tree.y - y) >= R * R;
  }
}

class Tree {
  int x;
  int y;

  Tree(this.x, this.y);

  bool getSilent(GongSa gonsa) {
    return (gonsa.x - x) * (gonsa.x - x) + (gonsa.y - y) * (gonsa.y - y) >= gonsa.R * gonsa.R;
  }
}