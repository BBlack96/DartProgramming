void main() {
  Calculator sumOperation = Calculator(10, 5, '+');
  Calculator subOperation = Calculator(30, 5, '-');
  Calculator multipleOperation = Calculator(25, 4, "*");
  Calculator divisionOperation = Calculator(2, 2, "/");
  print(sumOperation.sum());
  print(subOperation.subtraction());
  print(multipleOperation.multiplication());
  print(divisionOperation.division());
}

class Calculator {
  int firstDigit = 0;
  String mathematicalOperation = '';
  int secondDigit = 0;

  Calculator(this.firstDigit, this.secondDigit, this.mathematicalOperation);

  int sum() {
    int result = firstDigit + secondDigit;
    return result;
  }

  int subtraction() {
    int result = firstDigit - secondDigit;
    return result;
  }

  int multiplication() {
    int result = firstDigit * secondDigit;
    return result;
  }

  dynamic division() {
    if (secondDigit == 0) {
      throw Exception("Ошибка: нельзя делить на ноль.");
    }
    double result = firstDigit / secondDigit;
    if (result == result.toInt()) {
      return result.toInt();
    } else {
      return result;
    }
  }
}
