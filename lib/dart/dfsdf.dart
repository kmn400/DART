import 'dart:math';

void main() {
  print(calcTriangleArea(bottom: 3, height: 6));
  print(calcCircleArea(radius: 4));


}

double calcTriangleArea({double bottom, double height}) {
  return bottom * height / 2;
}

double calcCircleArea({double radius}) {
  double result = 0.0;

  // radius *= radius;   // radius = radius * radius
  result = pi * (radius * radius);

  return result;
}