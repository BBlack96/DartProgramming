void main() {

  String arduinoResponse = "<voltage=220,power=3200,speed=0,silent_mode=10>";

  // Прибираємо символ "<" на почтку строки
  String recordWithoutGreaterSymbol = arduinoResponse.replaceAll("<", "");

  // Прибираємо символ ">" на почтку строки
  String recordWithoutLessSymbol = recordWithoutGreaterSymbol.replaceAll(">", "");

  // Прибираємо коми на почтку строки і заразом перетворюємо строку у масив
  List<String> finalEdits = recordWithoutLessSymbol.split(',');

  int sum = 0; // Змінна куди будемо додавати числа

  for (var element in finalEdits) {

    // Прибираємо символ "=" щоб залишилась пара ключ:значення
    List<String>keyValue = element.split('=');
    int number = int.parse(keyValue[1]); // Перетворюємо значення масиву у int
    sum += number; // Отримане значення додаємо до змінної sum
  }

  print("Сума чисел: $sum");








}
