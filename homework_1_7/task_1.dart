void main() {
  try {
    int numerator = 10;
    int denominator = 2;


    double result = divideNumbers(numerator, denominator);
    print("Результат звичайного ділення: $result");


    int quotient = integerDivision(numerator, denominator);
    print("Результат цілочисельного ділення: $quotient");



    int remainder = calculateRemainder(numerator, denominator);
    print("Залишок від ділення: $remainder");
  } catch (e) {
    print("Помилка: $e");
  }
}

double divideNumbers(int numerator, int denominator) {
  if (denominator == 0) {
    throw Exception("Ділення на нуль неможливе");
  }
  return numerator / denominator;
}

int integerDivision(int numerator, int denominator) {
  if (denominator == 0) {
    throw Exception("Ділення на нуль неможливе");
  }
  return numerator ~/ denominator;
}

int calculateRemainder(int numerator, int denominator) {
  if (denominator == 0) {
    throw Exception("Ділення на нуль неможливе");
  }
  return numerator % denominator;
}
