import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  Plus plus = Plus();
  print(plus.same(inputs));

}

class Plus {
  String same(inputs) {
    String k = 'Hello';
    for (int i = 0; i < inputs.length; i++) {
      k = k + ' ' + inputs[i];
      if (i < inputs.length - 1) {
        k = k + ',';
      } else {
        k = k + '.';
      }
    }
    return k;
  }
}
