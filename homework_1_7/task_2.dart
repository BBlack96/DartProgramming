import 'dart:math';

void main() {
  double radius = 5.0; // Здесь вы можете использовать ввод пользователя
  double area = calculateCircleArea(radius);
  print('Площадь круга с радиусом $radius равна $area');
}

double calculateCircleArea(double radius) {
  return pi * radius * radius;
}


