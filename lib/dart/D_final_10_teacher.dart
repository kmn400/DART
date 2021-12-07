import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync());

  List <String> ipAddress = [];
  for (int i = 0; i < num; i++) {
    ipAddress.add(stdin.readLineSync());
  }
  final regExp = RegExp(
      r'^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)');

  ipAddress.forEach((address) {
    if (regExp.hasMatch(address)) {
      print('True');
    } else {
      print('False');
    }
  });
}