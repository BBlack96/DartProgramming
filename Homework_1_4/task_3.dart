void main() {
  int totalKilometers = 1100; // Тут вказуємо скільки км потрібно проїхати
  int currentKilometer = 0; // Тут будемо рахувати скільки проїхано всього

  Car mustang = Car("Mustang", 1, 2);
  if (mustang.startEngine()) {
    while (currentKilometer < totalKilometers) {
      mustang.rideOneKilometer();
      currentKilometer++;
      if (mustang.gasolineInTank == 0) {
        mustang.refill(100);
      }
    }
  }
  else {
    print("Заведіть двигун");
  }
  print("Загальна відстань: $currentKilometer км");
}

class Car {
  String model = '';
  int gasolineConsumption = 0;
  int gasolineInTank = 0;

  Car(this.model, this.gasolineConsumption, this.gasolineInTank);

  bool startEngine() {
    bool ignition = true; // Змінна заплювання, якщо воно є, то їдемо

    if (ignition == true) {
      print("Двигун увімкнено, можна їхати");
      return true;
    }
    else {
      print("Двигун вимкнено, не можемо їхати");
      return false;
    }
  }

  void refill(int gasolineAmount) {
    gasolineInTank += gasolineAmount;
    print(
        "Бак заправлено на $gasolineAmount л. Всього бензину в баку: $gasolineInTank л. ");
  }

  void rideOneKilometer() {
    if (gasolineInTank > 0) {
      print("Машина проїхала кілометер");
      gasolineInTank -= gasolineConsumption;
    }
    else {
      print("Бензину недостатньо, потрібна дозаправка");
    }
  }
}
