void main() {
  int age = 55;
  bool isPaid = false;
  bool hasPensionersId = false;


    if (age < 18) {
        print("Дитина - пропускаємо, плату не беремо");
      }
    else if(age < 55) {
        if (isPaid) {
            print("Дорослий. Оплата : $isPaid - Пропускаємо");
          }
        else {
          print("Дорослий. Оплата : $isPaid - не пропускаємо");
        }
    }
    else if (age >= 55 && !isPaid ){
        if (hasPensionersId ) {
            print("Пенсіонер. Пенсійне посвідчення: $hasPensionersId - пропускаємо");
          }
        else {
          print("Пенсіонер. Пенсійне посвідчення: $hasPensionersId - не пропускаємо");
        }
    }

}