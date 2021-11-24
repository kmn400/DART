import 'dart:convert';
import 'dart:io';

void main() {
  String inputs = stdin.readLineSync(encoding: utf8);

  Cal cal = Cal();

  print(cal.sum(inputs));
}

class Cal {
  String sum(String inputs) {
    String result = '';
    int sum = 0;
    List<String> chars = inputs.split('');
    var counts = <String, int>{};
    for (var char in chars) {
      counts[char] = (counts[char] ?? 0) + 1;
    }
    sum = counts['/'] + (counts['<'] * 10);
    result = sum.toString();
    return result;
  }
}
