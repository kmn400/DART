import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split('');

  Cal cal = Cal();

  print(cal.count(inputs));
}

class Cal {
  String count(List<String> inputs) {
    String result = '1';
    if (inputs.length >= 11) {
      result = 'ok';
    } else {
      for (int i = 0; i < inputs.length; i++) {
        result += result;
      }
      return result;
    }
  }
} 
