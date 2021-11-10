void main() {
  Word word = Word('abcdefghijklmnopqrstuvwxyz');

  print(word.isVowel(0)); // true
  print(word.isVowel(1)); // false
  print(word.isVowel(2)); // false
  print(word.isVowel(3)); // false
  print(word.isVowel(4)); // true
}
class Word {
  String letters;

  Word(this.letters);

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

  bool isConsonant(int i) {
    return !'aeiouAEIOU'.contains(letters[i]);
  }
}