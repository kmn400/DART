import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);
  int c = int.parse(inputs[2]);
  int d = int.parse(inputs[3]);
  Find find = Find();

  print(find.sum(a, b, c, d));
}

class Find {
  int sum(int a, int b, int c, int d) {
    List<int> box = [a, b, c, d];
    box.sort();

    int ab = int.parse(box[0].toString() + box[1].toString());
    int ba = int.parse(box[1].toString() + box[0].toString());
    int cd = int.parse(box[2].toString() + box[3].toString());
    int dc = int.parse(box[3].toString() + box[2].toString());
    int ac = int.parse(box[0].toString() + box[2].toString());
    int ca = int.parse(box[2].toString() + box[0].toString());
    int bd = int.parse(box[1].toString() + box[3].toString());
    int db = int.parse(box[3].toString() + box[1].toString());
    int ad = int.parse(box[0].toString() + box[3].toString());
    int da = int.parse(box[3].toString() + box[0].toString());
    int bc = int.parse(box[1].toString() + box[2].toString());
    int cb = int.parse(box[2].toString() + box[1].toString());

    int abcd = ab + cd;
    int abdc = ab + dc;
    int bacd = ba + cd;
    int badc = ba + dc;
    int acbd = ac + bd;
    int cabd = ca + bd;
    int acdb = ac + db;
    int cadb = ca + db;
    int adbc = ad + bc;
    int adcb = ad + cb;
    int dabc = da + bc;
    int dacb = da + cb;

    List<int> net
    = [abcd, abdc, bacd, badc, acbd, cabd, acdb, cadb, adbc, adcb, dabc, dacb];
    return net.reduce(max);
  }
}
