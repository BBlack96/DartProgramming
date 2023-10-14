void main() {
  int firstNumber = 10;
  double secondNumber = 11.99;
  String greeting = "Hello world";
  bool isWeekend = true;

  var incrementForInt = firstNumber++;
  var decrementForInt = firstNumber--;
  var incrementForDouble = secondNumber++;
  var decrementForDouble = secondNumber--;

  var parseToDouble = double.parse("777") + secondNumber;
  var parseToInt = int.parse('10') + firstNumber;
  var toString = "${parseToInt.toString()} + ${parseToDouble.toString()}";

  print(firstNumber);
  print(secondNumber);
  print(greeting);
  print(isWeekend);
  print(incrementForInt);
  print(incrementForDouble);
  print(decrementForInt);
  print(decrementForDouble);
  print(parseToDouble);
  print(parseToInt);
  print(toString);


}