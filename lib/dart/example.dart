void main() {
  int n = 5;
  List<int> num = List.filled(4, n);
  String str = num.join(',');
  String s = n.toString();
  str.indexOf(s);
  int i = 0;
  if (str.indexOf(s) == i) {
    if (i != 0 ) {
      print ('no');
    }
    else
      print(List.filled(4, n));
  }
}