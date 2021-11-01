void main() {
  exam(["Java", "Gino"]);
  exam([
    "Alice",
    "Bob",
    "Carol",
    "Dave",
    "Ellen",
  ]);
}

void exam(List<String> names) {
  String k = 'Hello';

  for (int i = 0; i < names.length; i++) {
   //공백
    k = k + ' ' + names[i]; //

    if (i < names.length - 1) {
      k = k + ',';
    } else {
      k = k + '.';
    }
  }

  print(k);
}
