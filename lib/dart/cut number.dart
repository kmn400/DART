void main() {
  SomeObject a = SomeObject();
  List<SomeObject> objects = List.filled(10, a);
}
class Num {
  int numbers;

  Num(this.numbers);

  String result1 = 'false';

  bool result = false;

  // i번째 글자가 모음이면 true // a, i, u, e, o
  bool isVowel(int i) {
    if (letters.substring(i, i + 1) == 'a') {
      result = false;
    }
    else if (letters.substring(i, i + 1) == 'e') {
      result = false;
    }
    else if (letters.substring(i, i + 1) == 'i') {
      result = false;
    }
    else if (letters.substring(i, i + 1) == 'o') {
      result = false;
    }
    else if (letters.substring(i, i + 1) == 'u') {
      result = false;
    }
    else {
      result = true;
    }
    return result;
  }
}