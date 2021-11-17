import 'dart:convert';
import 'dart:io';

void main() {
  print('대문자 알파벳 한 자를 입력하세요');
  String inputs = stdin.readLineSync(encoding: utf8);
  Alphabet alphabet = Alphabet();
  print(alphabet.whichWord(inputs));
}

class Alphabet {
  String english = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  int result = 0;

  int whichWord(inputs) {
    result = english.indexOf(inputs) + 1;
    return result;
  }
}
