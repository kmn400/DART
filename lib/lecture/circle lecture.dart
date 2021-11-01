import 'dart:math';

void main() {
  print(piEstimate(10000000));

}

double piEstimate(int tries) {
  double result = 0.0;
  int hits = 0;
  Random random = Random();
  for(int i = 0; i < tries; i++) {
    double x = random.nextDouble() * 2 - 1;
    double y = random.nextDouble() * 2 - 1;
    double distance = sqrt(x*x + y*y);
    if(distance < 1) {
      hits++;
    }
  }
  double piEstimate = 4 * hits / tries;
  return piEstimate;
}