import 'task_1.dart';

void main() {
  Worker myWorker = Worker("John", "Doe");
  Document firstDocument = signedDateDocument(
      "My text", "My title", "29.10", myWorker.createSignature());
  firstDocument.printDocument();
}

class Human {
  String name = '';
  String surname = '';

  Human(this.name, this.surname);
}

class Worker extends Human {
  Worker(super.name, super.surname);

  String createSignature() {
    String signature = "$name $surname";
    return signature;
  }
}

/**
 * Відповідь на питання в 4 пункті завдання:
 * Я думаю річ утім, що дочірні класи можуть наслідувати методи батьківских класів
 * але батьківські класи не можуть наслідувати методи "дітей"
 */