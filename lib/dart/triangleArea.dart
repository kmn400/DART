import 'dart:math';

void main() {
  print(calcTriangleArea(bottom: 3, height: 6));
  print(calcCircleArea(radius: 4, n: 2));

  double calcTriangleArea({double bottom, double height}) {
    return bottom * height / 2;
  }

  double calcCircleArea(double radius, double n) {
    double radius = 1;
    for (double i = 0; i < n; i++) {
      radius *= radius;
      return pi * radius;
    }
  }
}
